# Declaración responsable del productor

La declaración responsable no es un sello de aprobación previa de la AEAT. Es el compromiso formal del productor/fabricante/desarrollador de que la versión identificada cumple la normativa aplicable y se conserva con trazabilidad.

## Artefacto por release

Cada release fiscal genera `compliance/declarations/<version>.json` y una representación legible firmada por el responsable de Verifactu-Web, con:

- identidad legal del productor y medio de contacto;
- nombre comercial, identificador, versión y fecha de puesta a disposición;
- componentes que forman el SIF y sus versiones, incluidos worker fiscal y renderer;
- modalidad soportada: `VERI*FACTU` en MVP;
- alcance funcional: alta/anulación, QR, cadena/hash, remisión, exportación y conservación;
- identificación del sistema/instalación cuando aplique;
- manifest de esquemas AEAT, golden vectors, resultados de pruebas y checksum de artefactos;
- compromiso de mantener integridad, conservación, accesibilidad, legibilidad, trazabilidad e inalterabilidad;
- procedimiento de actualizaciones, incidencias y soporte;
- firma y fecha, con historial de supersesión sin borrar declaraciones anteriores.

## Gate de publicación

No se etiqueta una versión fiscal si no están aprobados: revisión legal, matriz de trazabilidad, XSD/WSDL de la versión técnica vigente, golden vectors, pruebas de QR/impresión, prueba de contingencia, restauración y la declaración responsable correspondiente. La documentación toma como plantilla los ejemplos de declaración responsable publicados en la página de información técnica de AEAT (S8).

## No confundir

- **Declaración responsable:** responsabilidad del productor del SIF.
- **Configuración fiscal del tenant:** datos del obligado, series, impuestos y modalidad operativa.
- **Auditoría operacional:** evidencia interna de usuarios, dispositivos y cambios; no reemplaza el RF ni la declaración.
- **Certificación externa:** si un mercado o cliente la exige, es adicional y no se afirma que exista por defecto.
