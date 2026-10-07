# Fuentes oficiales

Consultadas y verificadas a **7 de octubre de 2026**. Se enlaza siempre a la fuente primaria y se conserva el título para facilitar auditoría.

> **Estado normativo clave (07-10-2026)**
>
> - La obligación de adaptación de los sistemas informáticos de facturación (SIF) al RRSIF/VERI*FACTU está **aplazada** por el Real Decreto-ley 15/2025.
> - **Contribuyentes del Impuesto sobre Sociedades:** obligación desde el **1 de enero de 2027**.
> - **Resto de obligados tributarios incluidos en el artículo 3.1 del RRSIF:** obligación desde el **1 de julio de 2027**.
> - El periodo anterior a esas fechas tiene carácter de **pruebas** a efectos de la implantación de VERI*FACTU.
> - Este calendario no debe confundirse con el de la **factura electrónica B2B obligatoria**, que constituye una obligación relacionada pero diferente.

## Calendario RRSIF / VERI*FACTU vigente

| Ámbito | Fecha / estado | Fuente |
|---|---|---|
| Contribuyentes del Impuesto sobre Sociedades | **Obligatorio desde 01-01-2027** | S6, S7, S17 |
| Resto de obligados incluidos en el art. 3.1 RRSIF | **Obligatorio desde 01-07-2027** | S6, S7, S17 |
| Periodo previo a la obligación | **Periodo de pruebas**; deben aprovecharse los entornos y especificaciones AEAT para validar la solución antes de producción | S7, S17 |

## Fuentes

| ID | Fuente | Uso en la especificación |
|---|---|---|
| S1 | [Ley 58/2003, artículo 29.2.j, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2003-23186) | Obligación legal de integridad, conservación, accesibilidad, legibilidad, trazabilidad e inalterabilidad; certificación y formatos. |
| S2 | [Ley 11/2021, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2021-11473) | Introduce la obligación formal desarrollada por el RRSIF. |
| S3 | [Real Decreto 1007/2023, texto consolidado, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2023-24840) | Reglamento de requisitos SIF, modalidades VERI*FACTU/no verificable, declaración responsable, registros y QR. |
| S4 | [Orden HAC/1177/2024, texto consolidado, BOE](https://www.boe.es/eli/es/o/2024/10/17/hac1177/con) | Especificaciones técnicas/funcionales, registros, hash, firma, QR y leyenda. |
| S5 | [Real Decreto 254/2025, BOE](https://www.boe.es/eli/es/rd/2025/04/01/254) | Modificó el calendario anterior y determinados artículos del RD 1007/2023; su calendario fue posteriormente ampliado por el RDL 15/2025. |
| S6 | [Real Decreto-ley 15/2025, de 2 de diciembre, BOE](https://www.boe.es/eli/es/rdl/2025/12/02/15) | **Calendario vigente:** 01-01-2027 para contribuyentes del IS y 01-07-2027 para el resto de obligados del art. 3.1 RRSIF. |
| S7 | [AEAT — SIF y VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu.html) | Portal oficial, novedades, documentación y FAQ del sistema. |
| S8 | [AEAT — información técnica](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/informacion-tecnica.html) | Diseños de registro, WSDL, XSD, validaciones, hash, firma, QR, ejemplos de declaración responsable y portal de pruebas. |
| S9 | [AEAT — FAQ hash](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/huella-hash.html) | SHA-256, datos que participan y encadenamiento. |
| S10 | [AEAT — FAQ sistemas VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/sistemas-verifactu.html) | Remisión en línea, contingencia y diferencia con sistema no verificable. |
| S11 | [AEAT — FAQ trazabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-trazabilidad.html) | Secuencia temporal y cadena por SIF/obligado tributario. |
| S12 | [AEAT — FAQ integridad e inalterabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-integridad-inalterabilidad.html) | No modificar/eliminar registros; controles del SIF. |
| S13 | [AEAT — FAQ registro de eventos](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-registro-eventos_.html) | Obligatorio para sistemas no VERI*FACTU; no obligatorio como tal para VERI*FACTU. |
| S14 | [AEAT — FAQ anulación](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/registros-facturacion-anulacion.html) | Una factura emitida no se borra: registro de anulación y, si procede, nueva alta. |
| S15 | [Real Decreto 1619/2012, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2012-14696) | Reglamento de obligaciones de facturación, contenido y tipos de factura. |
| S16 | [Real Decreto 238/2026, de 25 de marzo, BOE](https://www.boe.es/eli/es/rd/2026/03/25/238/con) | Desarrollo de la factura electrónica B2B. Régimen relacionado pero **distinto** del RRSIF/VERI*FACTU. |
| S17 | [AEAT — Nota informativa sobre la ampliación del plazo de adaptación](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/nota-informativa-ampliacion-plazo-adaptacion-facturacion.html) | Confirmación administrativa del aplazamiento a 01-01-2027 / 01-07-2027 y del periodo previo de pruebas. |

## Implicaciones para Verifactu-Web

1. **El aplazamiento modifica el calendario, no los requisitos técnicos.** La arquitectura debe seguir implementando el RRSIF, la Orden HAC/1177/2024 y las especificaciones publicadas por la AEAT.
2. **La ventana adicional debe utilizarse para validación.** El objetivo del producto debe ser alcanzar preparación técnica y documental antes de las fechas obligatorias, dejando margen para pilotos y correcciones.
3. **Separar VERI*FACTU de factura electrónica B2B.** Aunque ambos dominios se relacionan con la facturación, son obligaciones distintas y deben modelarse como capacidades separadas para evitar acoplamiento regulatorio.
4. **Versionar el compliance.** Cada release fiscal debería registrar las versiones de XSD/WSDL, reglas de validación, algoritmos y documentación AEAT que soporta.
5. **Mantener controles de producción durante los pilotos.** Integridad, trazabilidad, encadenamiento, QR, evidencias de auditoría y declaración responsable deben probarse antes de que llegue la obligatoriedad.

## Nota sobre documentación técnica

Los XSD, WSDL, validaciones y algoritmos de S8 son fuente operativa para implementar. Deben descargarse con control de versión en un proceso de compliance (no se copian aquí sin licencia o necesidad), obtener su checksum y asociarlos a una release fiscal. Este repositorio fija el contrato conceptual y los puntos de integración.

## Política de revisión

Revisar este documento, como mínimo:

- ante nuevas publicaciones relevantes del portal SIF/VERI*FACTU de la AEAT;
- ante modificaciones del RD 1007/2023 o de la Orden HAC/1177/2024;
- ante cambios de XSD/WSDL o reglas de validación;
- ante normativa de factura electrónica B2B que afecte a las interfaces del producto;
- antes de cada release declarada apta para producción fiscal.
