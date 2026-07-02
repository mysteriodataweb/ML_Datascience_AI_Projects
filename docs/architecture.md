# Architecture Overview

## Repository Structure

This portfolio follows a **domain-based monorepo** architecture where each data science domain has its own directory under `projects/`. This structure promotes modularity, discoverability, and separation of concerns.

### Design Principles

1. **Domain-Driven Organization**: Projects are grouped by ML domain (NLP, deep learning, time series, etc.) rather than by course or assignment number, making the portfolio navigable by technology area.

2. **Self-Contained Projects**: Each project directory contains everything needed to understand and run it: a Jupyter notebook, dataset (if small), project-specific README, and any supporting files.

3. **Shared Infrastructure**: Common dependencies are managed through the root-level `requirements.txt` and `pyproject.toml`. Development tools (linting, formatting, pre-commit hooks) are configured once at the root level.

4. **Progressive Complexity**: Projects range from introductory (linear regression in R) to advanced (vector databases with Pinecone, LLM fine-tuning), demonstrating a learning progression.

### Data Flow

```
Raw Data (CSV) --> Jupyter Notebook --> Preprocessing --> Feature Engineering
    --> Model Training --> Evaluation --> Predictions --> Output Files
```

Each notebook follows this pipeline with appropriate variations for the specific ML task.

### Quality Assurance

- **Pre-commit hooks** catch formatting issues, trailing whitespace, and secrets before commit
- **GitHub Actions CI** runs linting, security checks, and tests on every push
- **Conventional Commits** ensure a clean, readable git history

### Key Technology Decisions

| Decision | Rationale |
|----------|-----------|
| Jupyter Notebooks | Best for exploratory analysis and educational demonstrations |
| scikit-learn | Industry standard for classical ML with consistent API |
| TensorFlow/Keras | Mature deep learning framework with high-level API |
| Pinecone | Managed vector database, no infrastructure overhead |
| HuggingFace | Largest model hub, easy-to-use pipeline API |
| R + tidyverse | Statistical analysis with rich visualization capabilities |

### Security

- No API keys or secrets are stored in the repository
- Environment variables are used for sensitive configuration
- `.env` files are gitignored; `.env.example` shows required variables
- GitHub Actions checks for accidentally committed secrets
