# Stock Price Forecasting with ARIMA and GARCH

**Domain**: Time Series Analysis

## Overview

Forecasts Apple stock prices using ARIMA and GARCH models. Includes stationarity testing, model selection (auto-ARIMA), residual diagnostics, and volatility modeling.

## Methodology

1. Data loading and visualization (closing prices)
2. Stationarity testing (ADF test)
3. ACF/PACF analysis
4. ARIMA model selection with auto_arima
5. Residual diagnostics (Q-Q plot, Ljung-Box)
6. GARCH volatility modeling

## Key Files

- `scripts/time_series_analysis.ipynb` -- Full notebook
- `apple_stock_data.csv` -- Historical Apple stock prices
- `plots/` -- Generated visualizations
- `report/` -- Analysis report

## Results

- ARIMA model captures price trends with statistically significant coefficients
- GARCH model detects volatility clustering
- Comprehensive diagnostic plots for model validation
