# Customer Churn Prediction with TensorFlow

**Domain**: Deep Learning

## Overview

Neural network model built with TensorFlow/Keras to predict bank customer churn. Demonstrates end-to-end deep learning pipeline: synthetic data generation, preprocessing, model architecture design, training, and evaluation.

## Methodology

1. Synthetic data generation (10,000 customers, 12 features)
2. Label encoding and feature scaling
3. Neural network architecture: Input(12) -> Dense(64, ReLU) -> Dense(32, ReLU) -> Dense(1, Sigmoid)
4. Adam optimizer, binary crossentropy loss

## Results

- Model achieves approximately 52% accuracy (baseline for synthetic data)
- Demonstrates complete TensorFlow pipeline and best practices

## Key Files

- `customer_churn.ipynb` -- Full notebook

## Note

This project uses synthetic random data for demonstration purposes. The low accuracy reflects the absence of real predictive patterns in random data, not a flaw in the modeling approach.
