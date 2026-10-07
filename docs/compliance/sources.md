# Fuentes oficiales

Consultadas y verificadas a **7 de octubre de 2026**. Se enlaza siempre a la fuente primaria y se conserva el título para facilitar auditoría.

> **Estado normativo clave (07-10-2026)**
>
> - La obligación de adaptación de los sistemas informáticos de facturación (SIF) al RRSIF/VERI*FACTU está **aplazada** por el Real Decreto-ley 15/2025.
> - **Contribuyentes del Impuesto sobre Sociedades:** obligación desde el **1 de enero de 2027**.
> - **Resto de obligados tributarios incluidos en el artículo 3.1 del RRSIF:** obligación desde el **1 de julio de 2027**.
> - El periodo anterior a esas fechas tiene carácter de **pruebas** a efectos de la implantación de VERI*FACTU.
> - Desde el **6 de octubre de 2026** está en vigor la **Orden HAC/1028/2026**, publicada en el BOE núm. 247 de 5 de octubre, que regula técnicamente la solución pública de facturación electrónica B2B y activa el cómputo de los plazos de aplicación del Real Decreto 238/2026.
> - VERI*FACTU/RRSIF y factura electrónica B2B son obligaciones relacionadas pero **jurídica y técnicamente distintas**; Verifactu-Web debe soportarlas mediante módulos desacoplados.

## Calendario regulatorio vigente

| Ámbito | Fecha / estado | Fuente |
|---|---|---|
| RRSIF/VERI*FACTU — contribuyentes del Impuesto sobre Sociedades | **Obligatorio desde 01-01-2027** | S6, S7, S17 |
| RRSIF/VERI*FACTU — resto de obligados incluidos en el art. 3.1 RRSIF | **Obligatorio desde 01-07-2027** | S6, S7, S17 |
| RRSIF/VERI*FACTU — periodo previo | **Periodo de pruebas**; deben aprovecharse los entornos y especificaciones AEAT para validar la solución antes de producción | S7, S17 |
| Factura electrónica B2B — empresarios/profesionales con volumen de operaciones > 8 M€ | **06-10-2027** | S16, S18 |
| Factura electrónica B2B — resto de empresarios/profesionales incluidos | **06-10-2028** | S16, S18 |
| Solución pública de facturación electrónica | Debe estar disponible **al menos dos meses antes** de la primera aplicación efectiva | S18 |

## Fuentes

| ID | Fuente | Uso en la especificación |
|---|---|---|
| S1 | [Ley 58/2003, artículo 29.2.j, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2003-23186) | Obligación legal de integridad, conservación, accesibilidad, legibilidad, trazabilidad e inalterabilidad; certificación y formatos. |
| S2 | [Ley 11/2021, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2021-11473) | Introduce la obligación formal desarrollada por el RRSIF. |
| S3 | [Real Decreto 1007/2023, texto consolidado, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2023-24840) | Reglamento de requisitos SIF, modalidades VERI*FACTU/no verificable, declaración responsable, registros y QR. |
| S4 | [Orden HAC/1177/2024, texto consolidado, BOE](https://www.boe.es/eli/es/o/2024/10/17/hac1177/con) | Especificaciones técnicas/funcionales, registros, hash, firma, QR y leyenda. |
| S5 | [Real Decreto 254/2025, BOE](https://www.boe.es/eli/es/rd/2025/04/01/254) | Modificó el calendario anterior y determinados artículos del RD 1007/2023; su calendario fue posteriormente ampliado por el RDL 15/2025. |
| S6 | [Real Decreto-ley 15/2025, de 2 de diciembre, BOE](https://www.boe.es/eli/es/rdl/2025/12/02/15) | **Calendario RRSIF vigente:** 01-01-2027 para contribuyentes del IS y 01-07-2027 para el resto de obligados del art. 3.1 RRSIF. |
| S7 | [AEAT — SIF y VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu.html) | Portal oficial, novedades, documentación y FAQ del sistema. |
| S8 | [AEAT — información técnica](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/informacion-tecnica.html) | Diseños de registro, WSDL, XSD, validaciones, hash, firma, QR, ejemplos de declaración responsable y portal de pruebas. |
| S9 | [AEAT — FAQ hash](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/huella-hash.html) | SHA-256, datos que participan y encadenamiento. |
| S10 | [AEAT — FAQ sistemas VERI*FACTU](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/sistemas-verifactu.html) | Remisión en línea, contingencia y diferencia con sistema no verificable. |
| S11 | [AEAT — FAQ trazabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-trazabilidad.html) | Secuencia temporal y cadena por SIF/obligado tributario. |
| S12 | [AEAT — FAQ integridad e inalterabilidad](https://www3.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-integridad-inalterabilidad.html) | No modificar/eliminar registros; controles del SIF. |
| S13 | [AEAT — FAQ registro de eventos](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/caracteristicas-requisitos-sif-registro-eventos_.html) | Obligatorio para sistemas no VERI*FACTU; no obligatorio como tal para VERI*FACTU. |
| S14 | [AEAT — FAQ anulación](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/preguntas-frecuentes/registros-facturacion-anulacion.html) | Una factura emitida no se borra: registro de anulación y, si procede, nueva alta. |
| S15 | [Real Decreto 1619/2012, BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2012-14696) | Reglamento de obligaciones de facturación, contenido y tipos de factura. |
| S16 | [Real Decreto 238/2026, de 25 de marzo, BOE](https://www.boe.es/eli/es/rd/2026/03/25/238/con) | Sistema español de factura electrónica B2B: ámbito, formatos, plataformas, estados, interoperabilidad y solución pública. Régimen distinto del RRSIF/VERI*FACTU. |
| S17 | [AEAT — Nota informativa sobre la ampliación del plazo de adaptación](https://sede.agenciatributaria.gob.es/Sede/iva/sistemas-informaticos-facturacion-verifactu/nota-informativa-ampliacion-plazo-adaptacion-facturacion.html) | Confirmación administrativa del aplazamiento a 01-01-2027 / 01-07-2027 y del periodo previo de pruebas. |
| S18 | [Orden HAC/1028/2026, de 2 de octubre — BOE-A-2026-20587](https://www.boe.es/eli/es/o/2026/10/02/hac1028) | **Desarrollo técnico de la solución pública de facturación electrónica B2B.** Regula emisión e interconexión, autenticación/identificación/representación, comunicación de pagos, codificación única, interoperabilidad con plataformas privadas y activa el cómputo de los plazos del RD 238/2026. |

## Orden HAC/1028/2026: impacto específico en Verifactu-Web

La Orden HAC/1028/2026 no modifica el mecanismo VERI*FACTU, pero sí convierte la **facturación electrónica B2B** en un requisito de producto con calendario ya determinado. Debe incorporarse al diseño como un bounded context/módulo separado del núcleo RRSIF.

### Requisitos arquitectónicos a incorporar

1. **Conector con la Solución Pública de Facturación Electrónica (SPFE).** La arquitectura debe prever emisión, recepción, consulta y recuperación de facturas y estados mediante los mecanismos técnicos definidos por Hacienda.
2. **Repositorio público universal.** Cuando se utilice una plataforma privada, debe contemplarse el envío simultáneo de una **copia electrónica fiel** de la factura a la solución pública.
3. **Normalización UBL.** Para el envío de copias desde plataformas privadas a la SPFE debe soportarse la sintaxis **UBL**, conservando la equivalencia semántica de los conceptos de la factura original.
4. **Estados de factura.** El dominio de factura B2B debe modelar explícitamente estados y eventos posteriores a la emisión, incluidos pago efectivo y rechazo cuando sean aplicables.
5. **Identificador/codificación única.** El modelo de factura y las APIs internas deben reservar la información necesaria para la codificación única regulada por la Orden.
6. **Autenticación y representación.** El servicio de integración B2B debe desacoplar identidad/autorización de los conectores externos para soportar los mecanismos oficiales de autenticación, identificación y representación.
7. **Interoperabilidad con plataformas privadas.** No diseñar el producto exclusivamente alrededor de la SPFE: debe poder intercambiar facturas mediante plataformas privadas y cumplir simultáneamente las obligaciones frente al repositorio público.
8. **Separación del registro fiscal VERI*FACTU.** Una factura comercial B2B y su ciclo de intercambio no deben confundirse con el registro de facturación RRSIF. Deben estar correlacionados mediante identificadores, pero mantener modelos, estados y adaptadores independientes.
9. **Seguridad.** Los componentes propios que interactúen con servicios públicos o plataformas privadas deben diseñarse con trazabilidad, autenticación fuerte, gestión segura de credenciales/certificados, auditoría y evidencias de intercambio.
10. **Versionado de formatos.** UBL, esquemas, catálogos, estados y contratos externos deben versionarse de forma independiente del dominio POS y del módulo VERI*FACTU.

### Consecuencia para el roadmap

La publicación de la Orden el **05-10-2026** y su entrada en vigor el **06-10-2026** inicia el cómputo de los plazos previstos legalmente. Por tanto, Verifactu-Web debería planificar:

- **Fase 1 — 2026/primer semestre 2027:** completar y certificar internamente el núcleo RRSIF/VERI*FACTU.
- **Fase 2 — en paralelo durante 2027:** implementar el bounded context de e-factura B2B, conversión/serialización UBL, estados y adaptador SPFE.
- **Hito 06-10-2027:** soporte productivo B2B para clientes con volumen de operaciones superior a 8 millones de euros.
- **Hito 06-10-2028:** soporte B2B general para el resto de empresarios y profesionales incluidos.

## Implicaciones generales para Verifactu-Web

1. **El aplazamiento modifica el calendario, no los requisitos técnicos de VERI*FACTU.** La arquitectura debe seguir implementando el RRSIF, la Orden HAC/1177/2024 y las especificaciones publicadas por la AEAT.
2. **La ventana adicional debe utilizarse para validación.** El objetivo del producto debe ser alcanzar preparación técnica y documental antes de las fechas obligatorias, dejando margen para pilotos y correcciones.
3. **Separar VERI*FACTU de factura electrónica B2B.** Aunque ambos dominios se relacionan con la facturación, son obligaciones distintas y deben modelarse como capacidades separadas para evitar acoplamiento regulatorio.
4. **Versionar el compliance.** Cada release fiscal debería registrar las versiones de XSD/WSDL, reglas de validación, algoritmos, formatos B2B y documentación oficial que soporta.
5. **Mantener controles de producción durante los pilotos.** Integridad, trazabilidad, encadenamiento, QR, evidencias de auditoría y declaración responsable deben probarse antes de que llegue la obligatoriedad.

## Nota sobre documentación técnica

Los XSD, WSDL, validaciones, algoritmos, esquemas de factura electrónica y catálogos oficiales son fuente operativa para implementar. Deben descargarse con control de versión en un proceso de compliance, obtener su checksum y asociarlos a una release fiscal. Este repositorio fija el contrato conceptual y los puntos de integración.

## Política de revisión

Revisar este documento, como mínimo:

- ante nuevas publicaciones relevantes del portal SIF/VERI*FACTU de la AEAT;
- ante modificaciones del RD 1007/2023 o de la Orden HAC/1177/2024;
- ante cambios de XSD/WSDL o reglas de validación;
- ante cambios del RD 238/2026, la Orden HAC/1028/2026 o las especificaciones de la SPFE;
- ante nuevas versiones de formatos, catálogos o mecanismos de interoperabilidad B2B;
- antes de cada release declarada apta para producción fiscal.
