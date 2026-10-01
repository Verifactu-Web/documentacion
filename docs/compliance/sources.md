# Fuentes oficiales

Consultadas y enlazadas a 1 de octubre de 2026. Se enlaza siempre a la fuente primaria y se conserva el título para facilitar auditoría.

| ID | Fuente | Uso en la especificación |
|---|---|---|
| S1 | [Ley 58/2003, artículo 29.2.j, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2003-23186) | Obligación legal de integridad, conservación, accesibilidad, legibilidad, trazabilidad e inalterabilidad; certificación y formatos. |
| S2 | [Ley 11/2021, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2021-11473) | Introduce la obligación formal desarrollada por el RRSIF. |
| S3 | [Real Decreto 1007/2023, texto consolidado, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2023-24840) | Reglamento de requisitos SIF, modalidades VERI*FACTU/no verificable, declaración responsable, registros y QR. |
| S4 | [Orden HAC/1177/2024, texto consolidado, BOE](https://www.boe.es/eli/es/o/2024/10/17/hac1177/con) | Especificaciones técnicas/funcionales, registros, hash, firma, QR y leyenda. |
| S5 | [Real Decreto 254/2025, BOE](https://www.boe.es/eli/es/rd/2025/04/01/254) | Ajusta calendario y determinados artículos del RD 1007/2023. |
| S6 | [Real Decreto-ley 15/2025, BOE](https://www.boe.es/eli/es/rdl/2025/12/02/15) | Calendario vigente: 1-1-2027 para IS y 1-7-2027 para el resto. |
| S7 | [AEAT — SIF y VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu.html) | Portal oficial y FAQ actualizada el 21-07-2026. |
| S8 | [AEAT — información técnica](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/informacion-tecnica.html) | Diseños de registro, WSDL, XSD, validaciones, hash, firma, QR, ejemplos de declaración responsable y portal de pruebas. |
| S9 | [AEAT — FAQ hash](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/huella-hash.html) | SHA-256, datos que participan y encadenamiento. |
| S10 | [AEAT — FAQ sistemas VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/sistemas-verifactu.html) | Remisión en línea, contingencia y diferencia con sistema no verificable. |
| S11 | [AEAT — FAQ trazabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-trazabilidad.html) | Secuencia temporal y cadena por SIF/obligado tributario. |
| S12 | [AEAT — FAQ integridad e inalterabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-integridad-inalterabilidad.html) | No modificar/eliminar registros; controles del SIF. |
| S13 | [AEAT — FAQ registro de eventos](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-registro-eventos_.html) | Obligatorio para no verificable; no obligatorio como tal para VERI*FACTU. |
| S14 | [AEAT — FAQ anulación](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/registros-facturacion-anulacion.html) | Una factura emitida no se borra: registro de anulación y, si procede, nueva alta. |
| S15 | [Real Decreto 1619/2012, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2012-14696) | Reglamento de obligaciones de facturación, contenido y tipos de factura. |
| S16 | [Real Decreto 238/2026, BOE](https://www.boe.es/eli/es/rd/2026/03/25/238/con) | Factura electrónica B2B futura/relacionada; no sustituye el diseño RRSIF. |

## Nota sobre documentación técnica

Los XSD, WSDL, validaciones y algoritmos de S8 son fuente operativa para implementar. Deben descargarse con control de versión en un proceso de compliance (no se copian aquí sin licencia o necesidad), obtener su checksum y asociarlos a una release fiscal. Este repositorio fija el contrato conceptual y los puntos de integración.
