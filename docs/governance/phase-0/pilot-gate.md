# Gate de piloto y criterios de salida de Fase 0

## Definition of Ready para piloto

- Tenant y cliente piloto identificados, con datos sintéticos o contrato y base legítima documentados.
- Modalidad VERI*FACTU y casos del piloto revisados por LGL/TAX.
- Matriz de roles, soporte, incidentes y contacto de emergencia definida.
- Entorno separado de producción, secretos gestionados, backups y restore probado.
- Golden vectors y tests de aislamiento tenant pasan en CI.
- Política de contingencia, reintentos y reconciliación explicada al cliente.
- Matriz de hardware soportado y fallback de impresión disponible.
- Pricing de piloto, límites y tratamiento de datos aceptados.

## Definition of Done para piloto

- Se completan ventas retail y hostelería representativas, incluidos rechazo/reintento y cierre.
- Los registros y evidencias pueden reconstruirse sin mutación silenciosa.
- Un segundo usuario con permisos limitados no puede ejecutar acciones administrativas.
- Se genera un paquete de evidencias con versión de código, configuración, tests y revisión externa.
- No existen vulnerabilidades críticas/altas abiertas sin aceptación explícita del riesgo.
- El fundador puede operar el sistema siguiendo runbooks y medir SLO, cola fiscal, errores y coste.
- LGL/TAX entrega visto bueno o lista de no conformidades bloqueantes.

## Decisión go/no-go

| Resultado | Condición |
|---|---|
| Go | Todos los bloqueantes cerrados y aprobación documentada |
| Go condicionado | Solo riesgos aceptados por escrito, con fecha y límite de clientes |
| No-go | Incertidumbre fiscal, pérdida de integridad, fuga tenant o restore no probado |

