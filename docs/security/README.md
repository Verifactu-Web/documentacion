# Seguridad

## Controles base

- TLS extremo a extremo, HSTS y cookies `HttpOnly/SameSite` para sesiones web.
- OIDC para autenticación, MFA para administradores y step-up para operaciones sensibles.
- Secretos en KMS/secret manager; nunca en GitHub, imágenes o logs.
- cifrado en tránsito y reposo, rotación de claves y minimización de PII;
- WAF, rate limits, protección anti-automatización en QR público y segregación de red;
- SAST, dependency scanning, secret scanning, SBOM, firma de imágenes y revisión de cambios;
- logging estructurado con redacción de NIF, tokens y payload fiscal salvo evidencia estrictamente necesaria.

## Fiscal y seguridad no son lo mismo

Un hash demuestra alteración detectable, no autorización ni confidencialidad. La seguridad IAM protege quién puede iniciar una venta, emitir una factura, anularla o exportar evidencia. Ambos controles se prueban por separado.

Ver [IAM/RBAC](iam-rbac.md) y [threat model](threat-model.md).
