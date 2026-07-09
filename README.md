# Data Science & Machine Learning Portfolio

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)](https://www.python.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-orange?logo=jupyter&logoColor=white)](https://jupyter.org)
[![scikit-learn](https://img.shields.io/badge/scikit--learn-1.3%2B-F7931E?logo=scikit-learn&logoColor=white)](https://scikit-learn.org)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.13%2B-FF6F00?logo=tensorflow&logoColor=white)](https://www.tensorflow.org)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.0%2B-EE4C2C?logo=pytorch&logoColor=white)](https://pytorch.org)
[![HuggingFace](https://img.shields.io/badge/HuggingFace-Transformers-FFD21E?logo=huggingface&logoColor=black)](https://huggingface.co)
[![R](https://img.shields.io/badge/R-4.x-276DC3?logo=r&logoColor=white)](https://www.r-project.org)

[![CI](https://github.com/AlfredBIAM/data-science-portfolio/actions/workflows/ci.yml/badge.svg)](https://github.com/AlfredBIAM/data-science-portfolio/actions/workflows/ci.yml)

A curated collection of **11 data science & machine learning projects** demonstrating practical expertise across the full ML lifecycle: from data exploration and feature engineering to model deployment and evaluation.

Created by **Kwami Alfred Jordal BIAM** -- Data Scientist & AI Engineer.

---

## Table of Contents

- [Overview](#overview)
- [Projects](#projects)
- [Technology Stack](#technology-stack)
- [Key Highlights](#key-highlights)
- [Architecture](#architecture)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Development](#development)
- [Roadmap](#roadmap)
- [License](#license)
- [Contact](#contact)

---

## Overview

This portfolio showcases hands-on experience with the most in-demand data science and AI technologies. Each project is an end-to-end implementation covering problem formulation, data preparation, exploratory analysis, modeling, evaluation, and interpretation.

**What makes this portfolio stand out:**

- **Breadth**: Covers NLP, deep learning, time series, dimensionality reduction, vector search, and LLMs
- **Depth**: Each project includes rigorous statistical analysis, model diagnostics, and business-oriented interpretations
- **Production awareness**: Projects use industry-standard tools (Pinecone, HuggingFace, TensorFlow) and follow software engineering best practices
- **Reproducibility**: Every notebook is self-contained with clear markdown explanations and documented results

---

## Projects

| #  | Domain                 | Project                                      | Techniques                                  | Highlights                        |
|----|------------------------|----------------------------------------------|---------------------------------------------|-----------------------------------|
| 1  | Natural Language Processing | [Fake News Detection](projects/natural-language-processing/fake-news-detection/) | TF-IDF, BoW, Logistic Regression, Naive Bayes, Linear SVM, LDA Topic Modeling | 99.3% accuracy with Linear SVM   |
| 2  | Deep Learning          | [Customer Churn Prediction](projects/deep-learning/customer-churn-prediction/) | TensorFlow/Keras, Neural Networks, Adam Optimizer | End-to-end TF pipeline |
| 3  | Dimensionality Reduction | [Music Genre Classification with PCA](projects/machine-learning/music-genre-classification/) | PCA, Logistic Regression, Feature Scaling | Missing genre imputation |
| 4  | Time Series            | [Stock Price Forecasting](projects/time-series/stock-price-forecasting/) | ARIMA, GARCH, ADF Test, ACF/PACF | Volatility modeling |
| 5  | Regression             | [Wine Quality Prediction](projects/machine-learning/wine-quality-prediction/) | Linear Regression, Random Forest, Feature Importance | Model comparison |
| 6  | Regularization         | [Ridge & Lasso Regression](projects/machine-learning/ridge-lasso-regression/) | RidgeCV, LassoCV, Feature Selection | Baseball salary prediction |
| 7  | Classification         | [SVM Social Purchase](projects/machine-learning/svm-social-purchase/) | SVM, Grid Search, Decision Boundaries | Visualization of SVM regions |
| 8  | Vector Databases       | [Semantic Search with Pinecone](projects/vector-databases/semantic-search/) | Sentence Transformers, Pinecone, Cosine Similarity | Weighted semantic search |
| 9  | Large Language Models  | [LLM Text Generation & Chatbot](projects/llm/intro-to-llms/) | HuggingFace Transformers, GPT-2, Qwen2.5 | Creative generation, Q&A |
| 10 | R Programming          | [Housing Price Regression](projects/r-programming/housing-regression/) | Linear Regression, T-Tests, VIF Analysis | Statistical rigor in R |
| 11 | LangChain (Stub)       | [QA Chatbot with LangChain](projects/llm/intro-to-llms/) | *(Design doc -- implementation in progress)* | Coming soon |

---

## Technology Stack

### Languages & Environments
| Technology     | Usage                                              |
|----------------|----------------------------------------------------|
| Python 3.10+   | Primary language for all ML/DL projects            |
| R 4.x          | Statistical analysis (housing regression)          |
| Jupyter        | Interactive notebooks for all projects             |
| Bash           | Automation and setup scripts                       |

### Machine Learning & Statistics
| Library        | Usage                                              |
|----------------|----------------------------------------------------|
| scikit-learn   | Classification, regression, PCA, SVM, model evaluation |
| statsmodels    | ARIMA, ADF tests, statistical modeling             |
| pmdarima       | Auto-ARIMA for time series                         |
| arch           | GARCH volatility modeling                          |

### Deep Learning & LLMs
| Library              | Usage                                              |
|----------------------|----------------------------------------------------|
| TensorFlow / Keras   | Neural network for churn prediction               |
| HuggingFace Transformers | GPT-2 generation, Qwen2.5 chatbot              |
| Sentence Transformers| Embeddings for vector search                       |

### Vector Databases
| Technology  | Usage                                              |
|-------------|----------------------------------------------------|
| Pinecone    | Vector index for semantic search                   |

### Data Processing & Visualization
| Library   | Usage                                              |
|-----------|----------------------------------------------------|
| pandas    | Data manipulation and analysis                     |
| numpy     | Numerical computing                                |
| matplotlib| Static and interactive visualizations              |
| seaborn   | Statistical data visualization                     |

### DevOps & Quality
| Tool              | Usage                                              |
|-------------------|----------------------------------------------------|
| Git / GitHub      | Version control, CI/CD, project management         |
| GitHub Actions    | Automated linting, testing, security checks        |
| pre-commit        | Code quality hooks (formatting, linting, secrets)  |
| Ruff / Black      | Python linting and formatting                      |
| EditorConfig      | Cross-editor consistency                           |

---

## Key Highlights

### Statistical Rigor
- Hypothesis testing (Levene's test, t-tests) in R
- Model diagnostics (VIF, residual analysis, Q-Q plots)
- Confidence intervals and p-value interpretation

### Scalable Search
- Vector embeddings with Sentence Transformers
- Pinecone vector database for similarity search
- Weighted query strategies for relevance tuning

### Production-Grade Code
- Clean Code principles
- Consistent naming conventions
- Comprehensive documentation
- CI/CD pipeline with automated quality checks

### Reproducibility
- requirements.txt with pinned versions
- Clear installation instructions
- Self-contained Jupyter notebooks with markdown explanations

---

## Architecture

```
data-science-portfolio/
|
+-- projects/                          # Project source code
|   +-- natural-language-processing/   # NLP projects
|   +-- deep-learning/                 # Deep learning projects
|   +-- machine-learning/              # ML projects (regression, classification)
|   +-- time-series/                   # Time series analysis
|   +-- llm/                           # Large Language Model projects
|   +-- vector-databases/              # Vector search projects
|   +-- r-programming/                 # R statistical analysis
|
+-- docs/                              # Additional documentation
|   +-- architecture.md                # Architecture overview
|
+-- scripts/                           # Utility scripts
|   +-- setup.sh                       # Environment setup script
|
+-- .github/                           # GitHub configuration
|   +-- workflows/ci.yml               # CI/CD pipeline
|   +-- ISSUE_TEMPLATE/                # Issue templates
|   +-- PULL_REQUEST_TEMPLATE.md       # PR template
|
+-- .gitignore                         # Git ignore rules
+-- .editorconfig                      # Editor settings
+-- .pre-commit-config.yaml            # Pre-commit hooks
+-- pyproject.toml                     # Project metadata
+-- requirements.txt                   # Python dependencies
+-- Makefile                           # Automation commands
+-- README.md                          # This file
+-- LICENSE                            # MIT License
+-- CHANGELOG.md                       # Version history
+-- CONTRIBUTING.md                    # Contribution guide
+-- CODE_OF_CONDUCT.md                 # Community guidelines
+-- SECURITY.md                        # Security policy
```

---

## Installation

### Prerequisites

- Python 3.10 or higher
- R 4.x (for the housing regression project)
- Git
- (Optional) Pinecone API key for vector database projects

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/AlfredBIAM/data-science-portfolio.git
cd data-science-portfolio

# 2. Create and activate a virtual environment
python -m venv venv

# Windows
venv\Scripts\activate

# Linux/Mac
source venv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# (Optional) Install all optional extras
pip install -e ".[dev,nlp,deep-learning,time-series,vector-db,llm]"

# 4. (Optional) Set up pre-commit hooks
pre-commit install
```

### Configuration (Vector Database Projects)

Copy the environment template and add your Pinecone API key:

```bash
cp .env.example .env
# Edit .env and add: PINECONE_API_KEY=your-key-here
```

---

## Usage

### Running Notebooks

```bash
# Start Jupyter
jupyter notebook

# Or with Jupyter Lab (recommended)
jupyter lab
```

Navigate to any project under `projects/` and run the notebook cells in order.

### Running the R Script

Open `projects/r-programming/housing-regression/Linear_Regression_Housing_Data.R` in RStudio or run:

```bash
Rscript projects/r-programming/housing-regression/Linear_Regression_Housing_Data.R
```

### Building the LangChain Project (Coming Soon)

```bash
cd projects/llm/intro-to-llms/langchain-chatbot
pip install -r requirements.txt
python chatbot.py
```

---

## Project Structure

For a detailed view of each project, see the individual README files:

| Directory                                                                 | Description                                    |
|---------------------------------------------------------------------------|------------------------------------------------|
| [projects/natural-language-processing/fake-news-detection/](projects/natural-language-processing/fake-news-detection/) | NLP pipeline for fake news classification |
| [projects/deep-learning/customer-churn-prediction/](projects/deep-learning/customer-churn-prediction/) | TensorFlow neural network for churn |
| [projects/machine-learning/music-genre-classification/](projects/machine-learning/music-genre-classification/) | PCA-based genre classification |
| [projects/machine-learning/wine-quality-prediction/](projects/machine-learning/wine-quality-prediction/) | Regression models for wine quality |
| [projects/machine-learning/ridge-lasso-regression/](projects/machine-learning/ridge-lasso-regression/) | Regularized regression techniques |
| [projects/machine-learning/svm-social-purchase/](projects/machine-learning/svm-social-purchase/) | SVM classification with grid search |
| [projects/time-series/stock-price-forecasting/](projects/time-series/stock-price-forecasting/) | ARIMA and GARCH forecasting |
| [projects/llm/intro-to-llms/](projects/llm/intro-to-llms/) | HuggingFace text generation and chatbot |
| [projects/vector-databases/semantic-search/](projects/vector-databases/semantic-search/) | Pinecone vector search |
| [projects/r-programming/housing-regression/](projects/r-programming/housing-regression/) | R statistical analysis |

---

## Development

### Code Quality

```bash
# Lint all Python code
make lint

# Format all Python code
make format

# Run all checks (lint + format check)
pre-commit run --all-files
```

### Conventional Commits

This project follows [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add new feature
fix: resolve bug in X
docs: update README
refactor: restructure Y module
test: add tests for Z
chore: update dependencies
```

### Git Branch Strategy

```
main        -- Production-ready code
  develop   -- Integration branch
    feat/*  -- New features
    fix/*   -- Bug fixes
    docs/*  -- Documentation
```

---

## Roadmap

- [ ] Complete the LangChain QA chatbot implementation
- [ ] Convert notebooks to Python scripts for production deployment
- [ ] Add unit tests with pytest for data processing functions
- [ ] Integrate MLflow for experiment tracking
- [ ] Add Docker support for containerized execution
- [ ] Deploy selected models as REST APIs with FastAPI
- [ ] Add more comprehensive visualizations and dashboards
- [ ] Implement model monitoring and drift detection

---



---

## Contact

**Kwami Alfred Jordal BIAM** -- Data Scientist & AI Engineer

- GitHub: [@AlfredBIAM](https://github.com/mysteriodataweb)
- LinkedIn: [linkedin.com/in/alfredbiam](https://linkedin.com/in/alfredbiam)
- Email: fredbiam9@gmail.com

---

*This portfolio represents a selection of academic and self-directed projects demonstrating competency in data science, machine learning, and artificial intelligence.*
