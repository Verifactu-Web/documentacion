# Registros, auditoría e inmutabilidad

## Capas

1. **RF fiscal:** modelo alineado con el esquema AEAT, append-only, hash/cadena, estado de remisión y payload canónico versionado.
2. **Documento fiscal:** PDF/XML/JSON y representación impresa derivada; hash del artefacto, versión de plantilla y QR calculado.
3. **Auditoría de negocio:** quién, qué, cuándo, dispositivo, motivo y correlación; no modifica RF.
4. **Evidencia operacional:** logs de remisión, acuses, métricas y trazas con minimización de datos.

## Controles

- PostgreSQL: roles separados, tabla fiscal sin `UPDATE/DELETE` para la aplicación, trigger de protección y particionado por fecha solo con política aprobada.
- Almacenamiento: objeto versionado con retención WORM/legal hold para evidencias y declaraciones; cifrado KMS.
- Identidad: toda acción sensible requiere usuario/servicio autenticado y correlación.
- Correcciones: nuevos eventos y registros; nunca sobreescritura.
- Conservación: la política se parametriza para cubrir el mayor plazo fiscal aplicable y se revisa con asesoría; no se promete una cifra universal si la obligación del cliente puede variar.
- Accesibilidad: exportación de RF, documentos y auditoría por tenant, con manifest y checksum.

La alta disponibilidad no sustituye conservación: se necesitan backups, exportaciones y restore probado.
