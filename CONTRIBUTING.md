# Contributing

Thank you for considering contributing to this project. This is a personal portfolio repository, but suggestions, corrections, and improvements are welcome.

## How to Contribute

1. **Fork** the repository
2. **Create a branch** for your feature or fix:
   ```bash
   git checkout -b feat/your-feature-name
   ```
3. **Make your changes** following the code style guidelines
4. **Run linting** to ensure code quality:
   ```bash
   make lint
   ```
5. **Commit** using conventional commit messages:
   ```bash
   git commit -m "feat: add new feature"
   git commit -m "fix: resolve issue with X"
   git commit -m "docs: update README"
   ```
6. **Push** to your fork and open a Pull Request

## Code Style

- Python: Follow PEP 8, use Black formatter (line length 100), Ruff for linting
- R: Follow the tidyverse style guide
- Notebooks: Clear all output before committing (use nbstripout)
- Use descriptive variable names, write short functions, add docstrings

## Pull Request Process

1. Ensure your PR description clearly describes the problem and solution
2. Link any related issues
3. Update documentation if needed
4. A maintainer will review your PR

## Reporting Issues

Open an issue using the provided issue templates (bug report or feature request).
