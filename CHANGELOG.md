# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/),
and this project adheres to [Semantic Versioning](https://semver.org/).

## [1.0.0] - 2026-07-02

### Added

- Initial release of the Data Science & Machine Learning Portfolio
- 11 independent projects covering NLP, deep learning, time series analysis, dimensionality reduction, regression, classification, vector databases, and LLM applications
- Comprehensive README with project documentation, installation guide, and architecture overview
- CI/CD pipeline with GitHub Actions (linting, security checks, notebook validation)
- Standard GitHub community files (CONTRIBUTING, CODE_OF_CONDUCT, SECURITY, ISSUE_TEMPLATE, PULL_REQUEST_TEMPLATE)
- MIT License
- EditorConfig and pre-commit hooks configuration for code quality
- Unified requirements.txt and pyproject.toml for dependency management

### Fixed

- Hardcoded absolute file path in R script replaced with relative path
- Duplicate CSV files and notebooks consolidated
- Typo in folder name "Predictiting" corrected to "Predicting"
- Inconsistent folder naming (project_2/project2) consolidated
- Notebook output cells stripped for cleaner version control

### Changed

- Project reorganized into domain-based directory structure under `projects/`
- Each project now has its own README with context and usage instructions
- Dependencies unified under root requirements.txt with version constraints
- PCA project `.gitignore` patterns merged into root `.gitignore`
