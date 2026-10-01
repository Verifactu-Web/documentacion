# Pricing, billing y entitlements

## Propuesta España, precios sin IVA

| Tier | Precio/mes | Incluye | Límites incluidos |
|---|---:|---|---:|
| Autónomo | 19 € | 1 tenant, 1 ubicación, POS + facturación VERI*FACTU, catálogo | 1.000 tickets, 2 usuarios |
| Comercio | 49 € | retail, inventario, promociones, 2 cajas | 5.000 tickets, 8 usuarios |
| Hostelería | 99 € | mesas, QR, meseros, KDS, impresión agente | 12.000 tickets, 2 ubicaciones, 15 usuarios |
| Multiubicación | 249 € | retail + hostelería, roles avanzados, reporting y soporte | 50.000 tickets, 10 ubicaciones |
| Enterprise | desde 599 € | base dedicada opcional, SSO, SLA, onboarding, integraciones | negociación |

El exceso se cobra por bloques, no por cada ticket aislado: 1.000 tickets = 6 €, 10.000 = 45 €, según tier. Sedes adicionales 15–35 €/mes; POS adicional 8–12 €/mes; agente SBC se vende como add-on de hardware/soporte. La factura emitida no se usa como unidad única de precio porque penaliza retail de alto volumen y hace imprevisible el coste.

## Unit economics orientativos

Objetivo de margen bruto: 75–85% en SaaS, sin contar hardware/pasarela de pago. Costes variables por tenant: PostgreSQL/backup/objetos, egress, observabilidad, remisión AEAT y soporte; presupuestar 2–8 €/mes en pequeño cliente y 10–40 €/mes en multiubicación según volumen. El precio debe revisarse con telemetría real durante 90 días.

## Metering y entitlements

El `billing-meter` consume eventos inmutables: `invoice.issued`, `active_user.month`, `location.active`, `print_job`, `storage.byte_day`. Stripe u otro PSP es un adapter: el ledger interno es fuente para derechos y conciliación.

Entitlements versionados: `fiscal.verifactu`, `pos.registers`, `hospitality.tables`, `qr.orders`, `kds.stations`, `api.rate_limit`, `storage.retention`. El bloqueo por impago nunca borra ni impide exportar evidencia fiscal; deja acceso de lectura/exportación durante una ventana gobernada.
