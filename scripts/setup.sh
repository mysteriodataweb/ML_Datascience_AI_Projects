#!/usr/bin/env bash
#
# setup.sh - Bootstrap development environment
#
# Usage:
#   chmod +x scripts/setup.sh
#   ./scripts/setup.sh
#

set -euo pipefail

echo "[1/4] Creating virtual environment..."
python -m venv venv

echo "[2/4] Activating virtual environment..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    source venv/bin/activate
fi

echo "[3/4] Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
pip install -e ".[dev]"

echo "[4/4] Installing pre-commit hooks..."
pre-commit install

echo ""
echo "Setup complete! Activate the environment:"
echo "  Windows: venv\\Scripts\\activate"
echo "  Linux/Mac: source venv/bin/activate"
