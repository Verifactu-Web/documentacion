# API REST

La API es el contrato público del producto. OpenAPI inicial: [`openapi.yaml`](../../openapi/openapi.yaml).

## Convenciones

- Base URL `/api/v1`; cambios incompatibles requieren `/v2` y periodo de coexistencia.
- `Authorization: Bearer`; `Idempotency-Key` obligatorio para comandos de emisión, pagos y mutaciones no triviales.
- `X-Correlation-Id` opcional del cliente, siempre generado si falta.
- Respuesta de error `application/problem+json` con `type`, `title`, `status`, `code`, `detail`, `correlationId`.
- Fechas RFC 3339 con zona; dinero decimal/string y moneda explícita; cantidades decimales con escala definida por recurso.
- Paginación por cursor y filtros tenant-scoped.

## Idempotencia fiscal

La clave se guarda junto al comando y resultado. Repetir la misma clave devuelve el resultado original; usarla con otro payload devuelve `409 IDEMPOTENCY_KEY_REUSED`. La idempotencia de AEAT se coordina con el identificador de envío y el hash del registro.

## Swagger

En entorno local se publica `/docs` (Swagger UI) y `/openapi.json`. En producción se sirve la especificación versionada y se filtran endpoints administrativos. El contrato no debe exponer secretos ni PII innecesaria.
