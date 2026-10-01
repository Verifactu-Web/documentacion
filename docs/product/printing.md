# Impresión ESC/POS y cocina

## WebSerial

El POS solicita permiso explícito del navegador, abre puerto serie con perfil configurable, genera comandos ESC/POS y confirma buffer/estado cuando el modelo lo permite. Se guardan `print_job`, plantilla, dispositivo, resultado y reintentos. La impresión fiscal se deriva del documento congelado.

## Agente/SBC Raspberry Pi

Recomendado para cocina: agente mínimo, outbound-only, mTLS, cola local limitada, health check, actualización firmada y allowlist de impresoras. El agente recibe trabajos no fiscales (comanda/KDS) y, si se imprime una factura, solo recibe el artefacto ya generado; nunca calcula hash ni remite a AEAT.

## Robustez

Colas por impresora, deduplicación por `print_job_id`, reimpresión marcada como copia/no nueva factura, timeout, circuit breaker y pantalla de estado. Plantillas de 58/80 mm se prueban con fotos/PDF y fixtures de QR.
