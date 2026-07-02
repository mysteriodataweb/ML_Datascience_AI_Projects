# Fake News Detection using NLP

**Domain**: Natural Language Processing

## Overview

End-to-end NLP pipeline that classifies news articles as fake or real using text preprocessing, feature extraction, and multiple classification algorithms.

## Dataset

Kaggle "Fake and real news dataset" -- 44,898 articles (23,481 fake, 21,417 real).

## Methodology

1. Text preprocessing: lowercasing, punctuation removal, stopword removal, lemmatization
2. Feature extraction: Bag-of-Words (BoW) and TF-IDF
3. Classification: Logistic Regression, Multinomial Naive Bayes, Linear SVM
4. Topic modeling: Latent Dirichlet Allocation (LDA) with pyLDAvis visualization

## Results

| Model | Accuracy |
|-------|----------|
| Logistic Regression (BoW) | ~98% |
| Multinomial Naive Bayes (TF-IDF) | ~97% |
| Linear SVM (TF-IDF) | **99.3%** |

Linear SVM with TF-IDF features achieved the highest accuracy.

## Key Files

- `BIAM_Alfred_NLP_Project.ipynb` -- Full notebook
- `Fake.csv` -- Fake news articles
- `True.csv` -- Real news articles
