#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "[1/4] comprobando estructura"
test -s README.md
test -s openapi/openapi.yaml
test "$(find diagrams -name '*.puml' | wc -l | tr -d ' ')" -ge 12

echo "[2/4] comprobando pares PlantUML"
for file in diagrams/*.puml; do
  grep -q '^@startuml' "$file"
  grep -q '^@enduml' "$file"
done

echo "[3/4] validando OpenAPI"
if command -v ruby >/dev/null 2>&1; then
  ruby -e "require 'yaml'; d=YAML.load_file('openapi/openapi.yaml'); abort unless d['openapi'].start_with?('3.'); abort unless d['paths'] && d['components'] && d['components']['schemas']; puts 'OpenAPI YAML válido y contiene paths/schemas'"
elif command -v python3 >/dev/null 2>&1; then
  python3 - <<'PY'
import sys
try:
    import yaml
except ImportError:
    print('Aviso: PyYAML no instalado; validación semántica OpenAPI omitida', file=sys.stderr)
    raise SystemExit(0)
with open('openapi/openapi.yaml', encoding='utf-8') as f:
    doc = yaml.safe_load(f)
assert doc['openapi'].startswith('3.')
assert doc['paths'] and doc['components']['schemas']
print('OpenAPI YAML válido y contiene paths/schemas')
PY
elif command -v npx >/dev/null 2>&1; then
  npx --yes @redocly/cli@1.34.3 lint openapi/openapi.yaml --silent
else
  echo "No hay validador OpenAPI local; la CI lo ejecutará." >&2
fi

echo "[4/4] renderizando PlantUML"
mkdir -p artifacts/diagrams
if command -v plantuml >/dev/null 2>&1; then
  plantuml -tpng -tsvg -o "$ROOT_DIR/artifacts/diagrams" diagrams/*.puml
elif [ -f /private/tmp/plantuml.jar ]; then
  java -Djava.awt.headless=true -jar /private/tmp/plantuml.jar -Playout=smetana -tpng -o "$ROOT_DIR/artifacts/diagrams" diagrams/*.puml
elif command -v docker >/dev/null 2>&1; then
  docker run --rm -v "$ROOT_DIR:/workspace" plantuml/plantuml:1.2025.10 -tpng -tsvg -o /workspace/artifacts/diagrams /workspace/diagrams/*.puml
else
  echo "PlantUML no disponible: instala PlantUML o Docker para renderizar." >&2
  exit 2
fi

test "$(find artifacts/diagrams -name '*.png' | wc -l | tr -d ' ')" -ge 12
echo "OK: documentación, OpenAPI y diagramas validados/renderizados."
