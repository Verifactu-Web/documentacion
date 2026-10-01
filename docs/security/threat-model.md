# Threat model resumido

| Amenaza | Control | Prueba |
|---|---|---|
| Fuga cross-tenant | RLS, scopes, cache keys y tests de autorización | tests property-based |
| Alterar/borrar RF | append-only, roles SQL, hash/cadena, WORM | intento de UPDATE/DELETE y restore |
| Duplicar envío AEAT | idempotency key, submission id, reconciliación | simulación de timeout |
| Robo de sesión POS | device binding opcional, MFA/step-up, revocación | pruebas de sesión |
| QR malicioso | URL/hostname allowlist, no ejecutar datos del QR | fuzz QR |
| Comprometer SBC | agente sin credenciales fiscales, mTLS, allowlist de trabajos | hardening y revocación |
| Exfiltración por soporte | justificación, acceso temporal, redacción | auditoría de sesión |
| Ransomware | backups inmutables, restore, least privilege | DR game day |
