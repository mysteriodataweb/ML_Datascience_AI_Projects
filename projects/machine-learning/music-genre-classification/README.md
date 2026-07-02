# Music Genre Classification with PCA

Classification of music genres using PCA (Principal Component Analysis) and logistic regression.

##  Description

This project implements a complete machine learning pipeline to classify music genres based on numerical features. The dataset contains 1000 music tracks, some of which have missing genres that need to be predicted.

## ² Technologies Used

- **Python 3.x**
- **pandas** - Data manipulation
- **numpy** - Numerical calculations
- **scikit-learn** - Machine learning models
- **matplotlib & seaborn** - Visualization
- **scipy** - Scientific computing

## Installation

### 1. Clone or download the project

### 2. Create a virtual environment (recommended)

```bash
# Windows
python -m venv venv
venv\Scripts\activate

# Linux/Mac
python3 -m venv venv
source venv/bin/activate
```

### 3. Install the dependencies

```bash
pip install -r requirements.txt
```

## Usage

### Launch Jupyter Notebook

```bash
jupyter notebook
```

Then open the file: `Music Genre Classification with PCA - Project.ipynb`

### Run the notebook

1. Run the cells in order (from top to bottom)
2. Each section is commented and explained



##  Methodology

1. **Data Exploration** - Dataset analysis and identification of missing values
2. **Correlation Analysis** - Study of relationships between variables
3. **PCA** - Dimensionality reduction (≥80% variance retained)
4. **Classification** - Logistic regression (with and without PCA)
5. **Prediction** - Completion of missing genders

##  Results

This project compares two approaches:

- Model on original (standardized) data

- Model on data reduced by PCA

Performance is evaluated via:

- Accuracy
- Precision, Recall, F1-score
- Classification Report



##  Notes

- The `music_dataset_complete.csv` file is generated after running the notebook.
- All parameters follow the project's conventions (test_size=0.3, random_state=42).
- The explanations are suitable for engineering/data science students.

