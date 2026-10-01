# Verifactu-Web — especificación de producto y arquitectura

Especificación inicial, en español, para un SaaS comercial de punto de venta, hostelería y retail con emisión de facturas adaptada al Reglamento de requisitos de los sistemas informáticos de facturación (RRSIF) y modalidad **VERI*FACTU**.

> **Estado y alcance.** Este repositorio documenta contratos, decisiones y controles; no implementa todavía la aplicación. La revisión normativa está fechada el **1 de octubre de 2026** y debe volver a validarse antes de cada release fiscal. No constituye asesoramiento jurídico ni fiscal.

## Decisiones ejecutivas

- **MVP fiscal:** SIF solo VERI*FACTU, cloud-first, con generación y remisión automática de todos los registros de facturación a la AEAT. Se evita ofrecer inicialmente la modalidad no verificable, más exigente en firma, registro de eventos, exportación y autocomprobación.
- **Núcleo:** modular monolith con límites de dominio explícitos, PostgreSQL, outbox/event bus y API REST versionada. La separación en servicios se hace solo donde el riesgo o el escalado lo justifican.
- **Tenancy:** una base PostgreSQL compartida con `tenant_id` obligatorio, RLS como defensa en profundidad y cifrado/retención por tenant; opción de base dedicada para clientes Enterprise.
- **Canales:** monorepo de frontends/PWAs para backoffice, POS, meseros y pedido QR. El dominio fiscal no depende de ningún frontend.
- **Operación:** Kubernetes administrado, worker fiscal con cola durable, almacenamiento WORM para evidencias, observabilidad y recuperación probada.
- **Precio de salida:** suscripción + volumen incluido; no cobrar únicamente por ticket. Propuesta base: 19 €/mes, 49 €/mes, 99 €/mes y Enterprise desde 249 €/mes, más sedes/POS y paquetes de volumen transparentes. Ver [pricing](docs/product/pricing.md).

## Navegación

- [Índice completo](docs/README.md)
- [Normativa y fuentes oficiales](docs/compliance/sources.md)
- [Matriz de trazabilidad](docs/compliance/traceability.md)
- [Flujo fiscal VERI*FACTU](docs/compliance/verifactu.md)
- [Arquitectura](docs/architecture/overview.md)
- [Modelo de datos](docs/architecture/data-model.md)
- [API REST y OpenAPI](docs/api/README.md) · [`openapi/openapi.yaml`](openapi/openapi.yaml)
- [Seguridad e IAM/RBAC](docs/security/README.md)
- [Operaciones y Kubernetes](docs/operations/README.md)
- [Producto retail/hostelería](docs/product/README.md)
- [Pricing y unit economics](docs/product/pricing.md)
- [Plan de pruebas](docs/testing/README.md)
- [ADRs](docs/adr/README.md)
- [Diagramas PlantUML](diagrams/README.md)

## Validación local

```bash
./scripts/validate.sh
```

La validación comprueba estructura, OpenAPI y renderiza todos los `.puml` con PlantUML. La CI de GitHub Actions usa una imagen versionada de PlantUML y un validador OpenAPI.

## Licencia y uso

La documentación se publica como especificación inicial del producto. Antes de reutilizarla para un SIF comercial hay que completar la revisión jurídica, los golden vectors frente a la documentación técnica vigente de AEAT, las pruebas externas de AEAT y la declaración responsable del productor.
