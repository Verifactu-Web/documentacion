# Alcance, personas y MVP

## Segmentos objetivo

| Segmento | Necesidad primaria | Canal inicial | Fuera del MVP |
|---|---|---|---|
| Autónomo retail | Caja, catálogo, cierre y factura | POS/PWA | Inventario avanzado |
| Pequeña hostelería | Mesas, comandas, KDS y QR | Mesero/POS/cliente | Delivery propio |
| Comercio multiubicación | Varias cajas y sedes | Backoffice + POS | SSO enterprise |
| Asesoría/gestoría colaboradora | Consulta y exportación | Backoffice restringido | Contabilidad integrada |

## Alcance MVP comercial

### Incluido

- Tenant, establecimientos, cajas/POS, usuarios, roles y permisos.
- Maestro de artículos por tenant, variantes, impuestos configurables revisados externamente, promociones simples.
- Venta, líneas, pagos, devoluciones/anulaciones controladas y cierre de caja.
- Factura simplificada/completa según reglas aprobadas; registro VERI*FACTU, hash/encadenamiento, QR, remisión y estados.
- Backoffice, POS PWA, OpenAPI versionada, idempotencia, outbox y auditoría.
- Impresión WebSerial y agente/SBC para cocina como segunda ruta operativa.
- Mesas, QR individual, carta, comandas y KDS en la capacidad hostelería priorizada.

### No incluido en la primera venta

- Modalidad no verificable.
- Nómina, compras, contabilidad completa o liquidación tributaria.
- Integración nativa con todas las marcas de TPV/impresoras.
- Delivery, reservas, fidelización avanzada y marketplace.
- Personalización de reglas fiscales sin revisión y versionado.

## Criterios de éxito del MVP

1. Un cliente piloto puede configurar su tenant, artículo, usuario, caja y emitir ventas de prueba sin intervención manual del fundador.
2. Cada operación fiscal genera una evidencia reproducible y queda en estado visible: creada, validada, enviada, aceptada/rechazada o en contingencia.
3. Los tests negativos demuestran que un usuario/tenant no puede leer o modificar datos ajenos.
4. El flujo de hostelería puede pasar de QR de mesa a comanda, cocina, pago y cierre.
5. La operación recupera mensajes y trabajos tras reinicio, duplicado, pérdida de conexión y reintento.
6. El consultor externo puede revisar una release con un paquete de evidencias y emitir un visto bueno o lista de acciones.

## Hipótesis que deben validarse

- El cliente acepta suscripción con volumen incluido mejor que tarifa exclusivamente por ticket.
- El uso de PWA reduce fricción frente a apps nativas para POS y meseros.
- VERI*FACTU cloud-first permite una experiencia operable con contingencia acotada y reconciliación posterior.
- El soporte de hardware debe limitarse a una matriz certificada de impresoras/agentes.

