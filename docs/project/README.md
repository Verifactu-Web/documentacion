# Gobierno del plan de implementación

El trabajo está reflejado en el [GitHub Project Verifactu-Web — Plan de implementación](https://github.com/orgs/Verifactu-Web/projects/1) y detallado en [task-estimates.md](task-estimates.md). El Project usa tarjetas de borrador para que el backlog pueda evolucionar antes de convertir tareas en issues de repositorio.

El texto descriptivo y los enlaces de cada tarjeta están centralizados en el [catálogo enlazable del Project](project-catalog.md).

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
