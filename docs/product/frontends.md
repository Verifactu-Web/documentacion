# Frontends y dispositivos

## Decisión

Monorepo con paquetes compartidos de design system, auth, API client y fiscal display:

- `admin-web`: configuración, catálogo, usuarios, billing, reporting;
- `pos-pwa`: caja táctil, escáner, pagos, cierre;
- `waiter-pwa`: mesas, comanda, split bill;
- `customer-pwa`: carta/pedido QR sin instalar app;
- `kds-pwa`: cocina por estación.

Cada frontend se despliega y autoriza por separado aunque comparta componentes. No se duplica lógica fiscal en el cliente.

## Offline

IndexedDB cifrado para catálogo y cesta; cola de comandos con expiración y límites. La PWA no decide por sí sola numeración/huella; recibe tokens/resultado del núcleo o entra en contingencia gobernada.
