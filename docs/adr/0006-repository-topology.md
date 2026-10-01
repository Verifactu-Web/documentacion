# ADR-0006: topología inicial de repositorios

**Estado:** aceptado · **Fecha:** 2026-10-01

## Contexto

La arquitectura necesita un núcleo fiscal transaccional, varios canales web/PWA, workers asíncronos y despliegue Kubernetes. Separar cada módulo en un repositorio desde el primer día aumentaría el coste de contratos, releases y pruebas de conformidad.

## Decisión

Se crean dos repositorios privados de implementación:

1. `plataforma`: monorepo del producto, con modular monolith, Fiscal Core, workers, frontends/PWAs, contratos, migraciones, pruebas y agente SBC inicial.
2. `infraestructura`: infraestructura como código, Helm/Kubernetes, políticas, observabilidad, backups y DR.

`documentacion` permanece como repositorio público de especificación y cumplimiento.

## Consecuencias

- Los contratos y golden vectors evolucionan junto al código que los consume.
- Infraestructura y aplicación tienen permisos, revisiones y ciclos de despliegue separados.
- No se crean todavía repositorios independientes para Fiscal Core, SDKs o dispositivos; se extraerán únicamente con una justificación de carga, seguridad, ciclo de vida o cumplimiento.
- Los dos repositorios privados requieren protección de ramas, CODEOWNERS, secret scanning, Dependabot, SBOM y CI desde el primer commit funcional.
