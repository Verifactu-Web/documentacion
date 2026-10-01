# Operación cloud/Kubernetes

## Topología

Ingress/WAF → API deployment → PostgreSQL/Redis/object storage. Workers separados: `fiscal-submitter`, `document-renderer`, `print-dispatcher`, `billing-meter`, `notifications`. Autoscaling por CPU y profundidad de cola; límites explícitos para que un tenant ruidoso no consuma la cadena fiscal.

## CI/CD

PR: lint Markdown/YAML, OpenAPI, PlantUML, unit/contract/security tests, SBOM. Release fiscal: aprobación de compliance, declaración responsable, hash de artefactos, migraciones backward-compatible, canary y rollback sin reescribir RF.

## Observabilidad

SLIs: latencia API, error rate, outbox lag, tiempo de remisión AEAT, porcentaje accepted/rejected, cadena mismatch, cola de impresión, restore freshness. Alertas por tenant y obligación, sin incluir NIF/payload en texto libre.

## Secretos

KMS/secret manager, workload identity, rotación, separación dev/staging/prod. Los certificados si se necesitan para modalidad no verificable viven en HSM/KMS; no se guardan en tenant DB.
