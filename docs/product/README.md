# Producto retail y hostelería

## Retail

Catálogo por tenant con SKU, códigos de barras, variantes, precios por lista, impuestos, promociones, inventario por ubicación, compras, devoluciones, clientes, vales y cierres de caja.

## Hostelería

- plano de mesas por sala/terraza y estado de mesa;
- carta digital por ubicación, idioma, horarios, alérgenos y disponibilidad;
- QR individual por mesa con token rotado; el cliente ve carta y crea pedido sin acceder al backoffice;
- PWA de meseros para tomar comanda, notas y modificadores;
- KDS por estación, prioridades, tiempos, reimpresión no fiscal y expedición a cocina;
- división de cuenta por artículo/persona, pagos parciales, propinas solo si el modelo legal/contractual lo permite;
- reservas, pedidos para recoger, delivery y fidelización como módulos futuros.

## Facturación

La comanda/pedido es operativa. Solo el flujo de checkout/expedición produce factura y RF. Las facturas simplificadas y completas se seleccionan con reglas del RD 1619/2012 y configuración del obligado; no se etiqueta cualquier ticket como factura sin pasar por el Fiscal Core.

## Híbrido

Un tenant puede activar retail y hostelería por ubicación. Comparten maestro de artículos, clientes e inventario si procede, pero mantienen flujos de mesa, carta y KDS aislados por capacidad.
