# Gobierno del plan de implementación

El trabajo está reflejado en el [GitHub Project Verifactu-Web — Plan de implementación](https://github.com/orgs/Verifactu-Web/projects/1) y detallado en [task-estimates.md](task-estimates.md). El Project usa tarjetas de borrador para que el backlog pueda evolucionar antes de convertir tareas en issues de repositorio.

El texto descriptivo y los enlaces de cada tarjeta están centralizados en el [catálogo enlazable del Project](project-catalog.md).

## Jerarquía del Project

La vista principal del Project está agrupada por el campo personalizado `Fase`, con doce valores (`F0`–`F11`). Cada grupo contiene:

- una tarjeta de fase que actúa como rollup visible, con el nombre y la estimación global de la fase;
- sus tarjetas de tarea individuales (`F#-T##`), con descripción, criterio de aceptación, dependencias y enlaces al catálogo y a la documentación relevante.

Esta es una jerarquía de planificación nativa de GitHub Projects: el campo `Fase` proporciona el nivel padre visual y los identificadores `F#-T##` el nivel de tarea. Las tarjetas se mantienen como borradores mientras el alcance se prepara; no se convierten automáticamente en issues públicos ni se usa `Parent issue` para evitar crear una relación de issues que no aporta valor en esta etapa.

La vista agrupada debe conservarse como vista operativa por defecto. Si se modifica, seleccionar `View → Group by → Fase` y guardar la vista. La fuente de verdad del contenido sigue siendo este repositorio, especialmente [project-catalog.md](project-catalog.md) y [task-estimates.md](task-estimates.md).

## Convención de ítems

`[F#] T#.# · verbo + resultado · Xd F / Yd C`

- `F`: días efectivos del fundador.
- `C`: días de consultoría legal/fiscal o especialista externo.
- `Codex`: aceleración prevista dentro de los días F; no reduce revisión, aceptación, seguridad ni responsabilidad.
- `P`: confianza de la estimación (`A` alta, `M` media, `B` baja).

Cada tarea tiene una aceptación verificable, dependencia y una fase. Los rollups `[F#] Épica` ayudan a filtrar el Project; las tareas son las unidades que deben cerrarse.

## Cómo se actualiza

1. Cambiar primero el catálogo y la aceptación en este repositorio.
2. Ajustar el ítem del Project y registrar la razón en un ADR o comentario.
3. Reestimar al completar cada gate usando datos reales.
4. Si cambia normativa, abrir una tarea `NORM`, congelar la release afectada y pedir revisión externa.
