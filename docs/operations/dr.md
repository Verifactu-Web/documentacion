# Backups, DR y SLO

- PostgreSQL HA multi-AZ, PITR, backup diario cifrado e inmutable, copia regional según DPA.
- Object storage versionado/WORM y replicación; manifest diario de evidencias.
- Restore automatizado semanal en entorno aislado; game day trimestral con conciliación fiscal.
- RPO objetivo 5 min, RTO objetivo 60 min, disponibilidad API 99,9% mensual para tiers estándar; el SLA comercial debe excluir dependencias AEAT/ISP y definir estados.
- La eliminación de tenant inicia una retención fiscal/legal y exportación; no destruye RF mientras exista obligación de conservar.
