# Alcance y estado normativo a 1 de octubre de 2026

## Qué aplica

La Ley General Tributaria, el RRSIF y su orden de desarrollo alcanzan a los sistemas informáticos que soportan la expedición de facturas completas u ordinarias y simplificadas, no a cualquier documento comercial preparatorio. El sistema debe preservar los registros de facturación y permitir su comunicación a la AEAT según la modalidad elegida.

El producto se diseña para empresarios/profesionales establecidos en España que no estén fuera del ámbito por una exclusión aplicable (por ejemplo, SII en los supuestos previstos). El tenant debe declarar su situación fiscal y el onboarding debe bloquear configuraciones incompatibles, sin pretender decidir por sí solo la obligación tributaria.

## Fechas de adaptación

- Sujetos al Impuesto sobre Sociedades: sistemas adaptados **antes del 1 de enero de 2027**.
- Resto de obligados del artículo 3.1 del RRSIF: sistemas operativos adaptados **antes del 1 de julio de 2027**.
- Productores/comercializadores: productos plenamente adaptados en el plazo máximo de nueve meses desde la entrada en vigor de la orden ministerial de desarrollo; la fecha publicada para la Orden HAC/1177/2024 es el 29 de julio de 2025, por lo que el producto comercial debe tratarse como ya sujeto a ese hito.

Las fechas anteriores reflejan la modificación vigente del Real Decreto 1007/2023 a través del Real Decreto-ley 15/2025. El calendario de factura electrónica B2B del Real Decreto 238/2026 es un frente relacionado, pero distinto del RRSIF; se modela como integración futura y no se confunde con VERI*FACTU.

## Obligación vs diseño

| Etiqueta | Significado en esta documentación |
|---|---|
| **OBLIGATORIO** | Sale de ley, reglamento, orden o especificación oficial; exige evidencia de conformidad. |
| **DECISIÓN** | Elección de diseño de Verifactu-Web; puede cambiar sin cambiar la norma. |
| **RECOMENDACIÓN** | Mejora de seguridad, operación o producto; se valida por coste/beneficio. |
| **PENDIENTE** | Requiere abogado/fiscalista, prueba AEAT o confirmación de una versión técnica posterior. |

## Política de actualización

`compliance/sources.md` es el inventario canónico de enlaces. Cualquier cambio en fuentes de AEAT/BOE debe generar un ADR, actualizar la matriz y ejecutar de nuevo los golden vectors. No se promociona una release fiscal con fuentes o esquemas desactualizados.
