# Baseline normativa y control de cambios

## Propósito

Fijar qué se considera “vigente” al inicio del proyecto y cómo se evita que una interpretación o una copia antigua de una especificación se convierta en requisito de producto. Esta página no sustituye la revisión de la consultoría.

## Fuentes de referencia

Las fuentes canónicas y sus enlaces se mantienen en [Fuentes oficiales](../../compliance/sources.md) y la relación requisito-control-prueba en la [matriz de trazabilidad](../../compliance/traceability.md). El baseline debe incluir, como mínimo, normativa publicada en BOE, documentación técnica y servicios de pruebas/comunicación de AEAT, y cualquier calendario oficial aplicable.

## Ficha de cada fuente

Para cada documento externo se registra:

| Campo | Contenido requerido |
|---|---|
| Identificador | URL oficial, título y organismo |
| Fecha consultada | 2026-10-01 o fecha de revisión |
| Versión/fecha de publicación | Tal como aparece en la fuente |
| Alcance | Requisito que afecta |
| Extracto operativo | Paráfrasis interna, sin sustituir el texto legal |
| Evidencia | PDF/HTML archivado según derechos y política |
| Hash/commit | Integridad del artefacto interno |
| Responsable | FND y revisor LGL/TAX |
| Impacto | Código, datos, UX, operaciones, declaración |

## Baseline inicial que debe aprobar LGL/TAX

1. Alcance del RRSIF y sujetos/operaciones cubiertos.
2. Modalidad VERI*FACTU escogida y obligaciones de generación, encadenamiento, huella, QR, remisión, conservación y respuesta.
3. Reglas de alta, rechazo, reintento, subsanación, anulación, rectificación y contingencia.
4. Obligaciones del productor, contenido de la declaración responsable y conservación de versiones/evidencias.
5. Fecha de aplicación para cada tipo de cliente y política de actualización.

## Proceso de cambio normativo

1. Detectar y registrar la fuente nueva.
2. Abrir un issue/ítem `NORM` con impacto preliminar.
3. Pedir memo a LGL/TAX, incluyendo casos afectados.
4. Actualizar traceability, ADR, contrato OpenAPI y golden vectors.
5. Implementar detrás de feature flag si la fecha no es inmediata.
6. Ejecutar regresión fiscal, revisar evidence pack y decidir release.
7. Publicar changelog y fecha de entrada en vigor; conservar la versión anterior.

