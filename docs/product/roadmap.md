# Roadmap y riesgos

## Fases

1. **Especificación y conformidad:** contratos, fiscal core, golden vectors, pruebas AEAT, declaración responsable.
2. **MVP comercial:** un tenant, multiubicación básica, POS, catálogo, factura simplificada/completa, VERI*FACTU, QR, WebSerial.
3. **Hostelería:** mesas, QR, meseros, KDS, agente SBC, split bill.
4. **Escala:** billing, observabilidad avanzada, Enterprise isolation, SSO, integraciones contables/pagos.
5. **Ecosistema:** factura electrónica B2B, reservas/delivery, marketplace de integraciones.

## Riesgos pendientes

- cambios posteriores de AEAT en XSD/WSDL, URL QR o validaciones;
- interpretación fiscal de casos de hostelería, propinas, anticipos, depósitos y devoluciones;
- operación offline prolongada y reloj de dispositivos;
- costes de soporte/hardware de impresoras heterogéneas;
- factura electrónica B2B y su calendario independiente;
- privacidad, transferencias internacionales y retención por perfil de cliente.

Mitigación: fiscal advisory board, release gates, entorno de pruebas AEAT, fixtures firmadas, ADR por cambio y no declarar “certificación” sin base.

El plan operativo detallado, con pasos, entregables, gates y criterios de aceptación, está en [Plan de implementación](../implementation-plan.md).
