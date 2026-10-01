# Diseño fiscal VERI*FACTU

## Flujo canónico

1. El usuario confirma una venta y el motor fiscal congela los datos de expedidor, numeración, fecha/hora, líneas, impuestos, totales y tipo de factura.
2. Se reserva el número en una secuencia fiscal por obligado/serie/establecimiento según la política aprobada; no se reutilizan huecos.
3. Se genera el **registro de facturación de alta (RF alta)** con el subconjunto oficial de datos y referencia al RF anterior.
4. Se calcula `huella` con SHA-256 sobre la serialización y campos exigidos por la Orden y la versión técnica de AEAT. El valor anterior se incorpora para encadenar.
5. Se persiste el RF de forma append-only y se publica en outbox transaccional. El documento incorpora QR y, para VERI*FACTU, la mención `VERI*FACTU` o `Factura verificable en la sede electrónica de la AEAT`.
6. El worker envía el registro en línea a AEAT, conserva request/response sanitizados, acuse, código de resultado y correlación; reintenta solo errores transitorios y mantiene DLQ para intervención.
7. Se entrega/descarga el PDF o impresión. El estado de negocio puede ser `issued_pending_aeat` durante una incidencia, pero nunca se oculta el estado de remisión.

## Datos del hash

La Orden HAC/1177/2024 enumera, para el alta, NIF del emisor, número/serie, fecha de expedición, tipo de factura, cuota total, importe total, huella anterior y fecha/hora/huso de generación; la anulación usa los campos que corresponden a su registro. La implementación debe usar la serialización oficial de la especificación técnica vigente, no una concatenación improvisada.

La cadena es por **SIF/obligado tributario**, no por `tenant` de la plataforma. La asignación de instalación y de obligado debe impedir que facturas de diferentes obligados compartan cadena o lote accidentalmente. Un tenant puede tener varias cajas, pero el servicio fiscal central es la autoridad de ordenación para ese obligado.

## QR y representación

- QR tributario: URL de cotejo/remisión de AEAT con NIF, serie+número, fecha de expedición e importe total.
- Nivel de corrección: M; tamaño objetivo 30–40 mm; la composición exacta de URL y ubicación se toma de la guía técnica vigente.
- Factura electrónica estructurada: se incluye la URL como campo independiente; no se presupone que haya que incrustar imagen QR.
- La leyenda fiscal no se sustituye por un texto de marketing.

## Anulación, rectificación y devoluciones

- Una factura emitida no se elimina ni se edita.
- Error que invalida la factura: RF de anulación vinculado + nueva alta con nuevo número si procede.
- Rectificación sustantiva: factura rectificativa conforme al RD 1619/2012 y sus registros correspondientes.
- Devolución comercial de una venta ya facturada: operación de devolución y documento fiscal según caso; nunca un `DELETE` de venta.
- Pre-ticket/comanda/pedido no facturado: puede cancelarse con auditoría de negocio, pero queda vinculado o conservado cuando haya alimentado el proceso de facturación.

## Decisión de modalidad

El MVP es **solo VERI*FACTU**: remisión automática, cadena/hash y contingencia. Si se habilita una modalidad no verificable, será un producto/configuración distinta, con firma electrónica de RF/eventos, registro de eventos obligatorio, exportación y comprobaciones de hash/cadena/firma, y nueva declaración responsable y batería de pruebas.

![Flujo de emisión VERI*FACTU](../../diagrams/rendered/05-verifactu.png)
