# RACI y modelo operativo de equipo

## Roles reales

- **FND/PO/Tech:** fundador; producto, arquitectura, desarrollo, despliegue, soporte de primer nivel y aceptación de releases.
- **LGL/TAX:** consultoría legal/fiscal externa; interpretación, revisión de evidencias, casos frontera y declaración responsable.
- **SEC/OPS externo:** especialista puntual bajo demanda para pentest, hardening o revisión de infraestructura.
- **PILOT:** cliente piloto que aporta casos, datos ficticios/anonimizados y aceptación operativa; no decide cumplimiento legal.
- **COD:** Codex como acelerador de trabajo: genera borradores, código, tests, migraciones, diagramas, CI y análisis; no es un aprobador ni responsable.

## Matriz RACI

| Actividad | FND | LGL/TAX | SEC/OPS | PILOT | COD |
|---|:---:|:---:|:---:|:---:|:---:|
| Charter, roadmap y pricing | A/R | C | I | C | C |
| Interpretación RRSIF/AEAT | A | R | I | C | C |
| Diseño fiscal y golden vectors | A/R | C/R | I | C | C |
| Código de dominio y API | A/R | C | I | C | R* |
| Seguridad, threat model y secretos | A/R | C | C/R | I | C |
| Infraestructura y backups | A/R | I | C/R | I | R* |
| UX y aceptación de POS | A/R | I | I | C/R | C |
| Evidencias y declaración responsable | A/R | R | C | I | C |
| Release a piloto | A/R | C/A fiscal | C | C | I |
| Soporte e incidentes | A/R | C fiscal | C | C | I |

`R*` significa que Codex ejecuta la generación o automatización bajo revisión del fundador. La responsabilidad permanece en la persona que revisa, integra y publica.

## Capacidad de una persona

El plan asume una dedicación media de 25–30 horas/semana al producto, de las que no más de 18–22 son construcción concentrada. El resto cubre clientes, soporte, ventas, administración, seguridad y coordinación externa. No se planifican dos streams de ingeniería simultáneos sin reducir alcance.

## Consultoría externa

Se propone reservar una bolsa inicial de 24–40 horas para baseline, casos frontera, revisión de evidencias y declaration pack; después, 4–8 horas por release fiscal y una revisión anual. Las horas y tarifas deben contratarse por escrito; las cifras presupuestarias están en [capacidad y presupuesto](capacity-and-budget.md).

