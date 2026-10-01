# Contingencia y recuperación fiscal

## Corte de internet/AEAT

El modo VERI*FACTU debe poder generar y conservar el registro antes de remitirlo, encolarlo de forma durable y reintentar cuando vuelva la conectividad. El POS muestra un estado de contingencia, guarda la hora local y la hora de servidor disponible, no permite borrar ni renumerar y aplica límites de riesgo por establecimiento.

Se conserva el orden de generación fiscal. La remisión se hace automáticamente cuando sea posible y se concilia con AEAT. Las respuestas no concluyentes quedan en reconciliación manual, no se duplican por reintentos.

## Corte del cloud

- POS/PWA: no se factura offline indefinidamente. Se admite un buffer local cifrado y acotado para operaciones de continuidad, con control de reloj, secuencia provisional y política por riesgo.
- Si el núcleo fiscal no está disponible, se puede seguir capturando pedido/comanda no fiscal; la conversión a factura exige recuperar autoridad fiscal o usar un procedimiento previamente aprobado por asesoría.
- Agente/SBC local: imprime comandas de cocina, no se convierte en autoridad fiscal independiente.

## Recuperación

1. Detectar incidente y congelar cambios administrativos.
2. Restaurar desde backup verificado o réplica; verificar checksums y última huella por obligado/instalación.
3. Reconciliar outbox, respuestas AEAT y documentos conservados.
4. Reanudar por lotes idempotentes; detener ante discrepancia de cadena.
5. Generar informe de incidente, impacto por tenant y decisión legal.

Objetivos iniciales: RPO ≤ 5 min para datos transaccionales, RTO ≤ 60 min en región primaria; para la evidencia WORM, RPO efectivo según política de replicación. Son objetivos de producto, no una garantía legal.
