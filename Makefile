.PHONY: help install install-dev lint format clean

help:
	@echo "Available commands:"
	@echo "  make install       Install core dependencies"
	@echo "  make install-dev   Install dev dependencies (testing, linting)"
	@echo "  make install-all   Install all optional dependencies"
	@echo "  make lint          Lint Python code with ruff"
	@echo "  make format        Format Python code with black"
	@echo "  make clean         Remove cache files and build artifacts"

install:
	pip install -r requirements.txt

install-dev:
	pip install -r requirements.txt
	pip install -e ".[dev]"

install-all:
	pip install -r requirements.txt
	pip install -e ".[dev,nlp,deep-learning,time-series,vector-db,llm]"

lint:
	ruff check projects/ scripts/

format:
	black projects/ scripts/

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	rm -rf build/ dist/ .pytest_cache/
