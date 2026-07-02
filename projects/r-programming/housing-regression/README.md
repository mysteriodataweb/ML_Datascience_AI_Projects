# Housing Price Regression Analysis in R

**Domain**: Statistical Analysis with R

## Overview

Comprehensive linear regression analysis of housing prices using R. Includes EDA, hypothesis testing, model building, and diagnostics. Demonstrates statistical rigor with professional reporting.

## Methodology

1. **Exploratory Data Analysis**: Summary statistics, distribution analysis
2. **Correlation Analysis**: Variable relationships and multicollinearity check
3. **Hypothesis Testing**: Levene's test for variance homogeneity, independent t-test
4. **Simple Linear Regression**: Average Rooms vs Median Home Value
5. **Multiple Linear Regression**: All predictors with VIF diagnostics
6. **Model Diagnostics**: Residual plots, Q-Q plots, influence analysis

## Results

- Simple model explains **75.9% of variance** (R-squared)
- Average Rooms is the dominant predictor (beta = 7.19, p < 2e-16)
- Other variables (crime, transport, schools) show no significant effect
- All model assumptions validated (normality, homoscedasticity, no multicollinearity)

## Key Files

- `Linear_Regression_Housing_Data.R` -- Full R script
- `housing_data.csv` -- Housing dataset

## Setup

```r
install.packages(c("ggplot2", "dplyr", "car", "tidyverse", "psych"))
```
