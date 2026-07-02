# ============================================================
# Housing Data Analysis Project – FINAL SUBMISSION
# Author: Kwami Alfred Jordal BIAM
# Course: Introduction to R
# ============================================================


# ============================================================
# 1. Load Required Libraries
# ============================================================

library(ggplot2)
library(dplyr)
library(car)
library(tidyverse)
library(psych)


# ============================================================
# 2. Data Loading
# ============================================================

data <- read.csv("housing_data.csv")
data <- as_tibble(data)


# ============================================================
# 3. Initial Data Exploration (EDA)
# ============================================================

# View structure and sample observations
head(data)
tail(data)
str(data)
summary(data)
describe(data)

# Interpretation:
"The sample size is large (n ≈ 481–506), ensuring reliable statistical estimates. For most variables, the mean and median are very close, indicating approximately symmetric distributions.

Crime Rate has a mean of 3.14 and a median of 3.03, with a relatively high standard deviation of 2.23 and a range from 0.01 to 12.63, showing strong variability across neighborhoods and a slight right skew (skew = 0.57).

Average Rooms is highly stable, with a mean and median both equal to 6.03 and a low standard deviation of 0.68, indicating similar housing sizes across areas and an almost perfectly symmetric distribution (skew = 0.01).

Public Transport Access has a mean of 5.42 and a median of 5.00, with higher dispersion (sd = 2.86), reflecting notable differences in accessibility between neighborhoods.

Number of Schools has a mean of 4.99 and a median of 5.00, with moderate variability (sd = 1.98) and values ranging from 0 to 10, indicating uneven educational infrastructure across areas.

Median Home Value has a mean of 47.10 and a median of 46.91, with a standard deviation of 5.49 and values ranging from 31.55 to 62.56, showing meaningful but not extreme variation in housing prices.

Overall, the low skewness and moderate dispersion across variables suggest that the data are well suited for parametric analyses such as correlation, t-tests, and linear regression."

# ============================================================
# 4. Descriptive Statistics
# ============================================================

# Mean
means <- sapply(data, mean, na.rm = TRUE)
means

# Median
medians <- sapply(data, median, na.rm = TRUE)
medians

# Custom Mode Function
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Mode
modes <- sapply(data, get_mode)
modes

# Standard Deviation
sds <- sapply(data, sd, na.rm = TRUE)
sds




# ============================================================
# 5. Correlation Analysis
# ============================================================

cor_matrix <- cor(data, use = "complete.obs")
cor_matrix

# Identify the strongest correlation (excluding self-correlation)
cor_matrix[lower.tri(cor_matrix, diag = TRUE)] <- NA
which(abs(cor_matrix) == max(abs(cor_matrix), na.rm = TRUE), arr.ind = TRUE)

# Interpretation:
"The correlation analysis shows that Average.Rooms and Median.Home.Value have by far the strongest relationship, with a correlation coefficient of r = 0.888, indicating a very strong positive linear association. This means that areas with more rooms per home tend to have substantially higher median home values.

All other correlations are weak or negligible. Crime.Rate has a very weak positive correlation with Median.Home.Value (r = 0.092), suggesting no meaningful linear relationship between crime levels and housing prices in this dataset. Similarly, Public.Transport.Access and Number.of.Schools show almost no correlation with Median.Home.Value (r = 0.011 and r = 0.005, respectively).

The remaining correlations between explanatory variables are close to zero, indicating low multicollinearity, which is favorable for regression modeling.

Overall, Average.Rooms is the most influential predictor of Median.Home.Value, justifying its use as the primary variable in the regression analysis."


# ============================================================
# 6. Missing Data Imputation
# ============================================================

# Check missing values
colSums(is.na(data))

# Replace missing values with the median of each variable
data <- data %>%
  mutate_all(~ ifelse(is.na(.), median(., na.rm = TRUE), .))

# Verify missing values are resolved
colSums(is.na(data))

# Interpretation:
# Missing values were replaced using the median, a robust approach that limits
# the influence of extreme values and preserves the distribution of the data.


# ============================================================
# 7. Data Visualization
# ============================================================

# Histogram of Median Home Values
ggplot(data, aes(x = Median.Home.Value)) +
  geom_histogram(
    bins = 9,
    fill = "darkcyan",
    color = "white",
    alpha = 0.7
  ) +
  labs(
    title = "Distribution of Median Home Values",
    x = "Median Home Value",
    y = "Frequency"
  ) +
  theme_minimal()

# Interpretation:
" Since the distribution of Median Home Values is approximately normal, 
we can reliably apply parametric statistical methods such as correlation analysis,
t-tests, and linear regression.
This normality supports the validity of statistical inferences made about housing prices and indicates that the mean is an appropriate measure of central tendency. It also suggests that extreme values do not unduly influence the results, strengthening confidence in the conclusions drawn from the analysis."

# ============================================================
# 8. Hypothesis Testing
# ============================================================

# Objective:
# Determine whether median home values differ between high-crime
# and low-crime areas.

# ------------------------------------------------------------
# 8.1 Define Crime Categories
# ------------------------------------------------------------

crime_median <- median(data$Crime.Rate, na.rm = TRUE)

data <- data %>%
  mutate(Crime.Category = ifelse(Crime.Rate >= crime_median, "High", "Low"))

# ------------------------------------------------------------
# 8.2 Levene’s Test (Homogeneity of Variance)
# ------------------------------------------------------------

levene_test <- leveneTest(Median.Home.Value ~ Crime.Category, data = data)
print(levene_test)

# Interprétation
"Levene's test (F = 2.61, p = 0.107) did not reveal a significant difference between 
the variances of median housing values in high- and low-crime areas. The assumption
of homogeneity of variances is therefore met, allowing the application of a t-test
to two samples with equal variances."

# ------------------------------------------------------------
# 8.3 Two-Sample Independent T-Test
# ------------------------------------------------------------

t_test_result <- t.test(
  Median.Home.Value ~ Crime.Category,
  data = data,
  var.equal = TRUE
)

t_test_result

# Interpretation:
"Interpretation of the Two-Sample T-Test

A two-sample independent t-test was performed to compare the median value of dwellings between high-crime and low-crime areas.

The results show a t-test statistic of 0.85 with 504 degrees of freedom and a p-value of 0.398. 
Since this p-value is well above the significance level of 0.05, we do not reject the null hypothesis.

This indicates that there is no statistically significant difference between the average dwelling values
in high-crime (47.30) and low-crime (46.89) areas.

Furthermore, the 95% confidence interval [−0.55; 1.37] contains zero, which confirms the absence of a significant effect of the crime rate on the median dwelling value in this sample."

# ============================================================
# 9. Regression Analysis
# ============================================================

# ------------------------------------------------------------
# 9.1 Simple Linear Regression
# ------------------------------------------------------------

lm_model <- lm(Median.Home.Value ~ Average.Rooms, data = data)
summary(lm_model)

# Interpretation:
"1. General Interpretation of the Model

The simple linear regression model aims to explain the median home value based on the average number of rooms (Average.Rooms). The results indicate that the model is highly significant and has strong explanatory power.

2. Interpretation of the Coefficients
Intercept (β₀)

The intercept is estimated at 3.79 and is statistically significant (p < 0.001).

This represents the estimated value of the Median Home Value when the average number of rooms is zero. Although this situation is not realistic from a practical standpoint, the intercept is necessary to define the regression line.

Average.Rooms (β₁)

The coefficient associated with Average.Rooms is 7.19 and is highly significant (t = 39.82, p < 2e⁻¹⁶).

This means that:

Each additional room, on average, is associated with an increase of approximately 7.19 units in the median home value, all other things being equal.

This result confirms that home size is a major determinant of real estate prices in this dataset.

3. Goodness of Fit

The R² = 0.759 indicates that 75.9% of the variance in the median home value is explained by the average number of rooms.

The adjusted R² (0.758) is very close to the R², which confirms the stability and relevance of the model.

4. Residual Analysis

The residuals are centered around zero (median ≈ 0), indicating an absence of systematic bias in the predictions.

The majority of prediction errors fall between approximately −1.69 and +1.73, with some extreme values ​​but no major imbalance.

The residual standard error of 2.70 suggests that, on average, the model's predictions deviate from the true value by approximately 2.7 units.

5. Overall Model Significance

The F-statistic (F = 1586, p < 2.2e⁻¹⁶) indicates that the model is globally significant, meaning that the relationship between Average.Rooms and Median.Home.Value is not due to chance.

6. Final Model Conclusion

In conclusion, the regression model shows a strong, positive, and statistically significant linear relationship between the average number of rooms and the median home value. Average.Rooms is an excellent predictor of home prices in this dataset, explaining nearly 76% of the observed variability."

# ------------------------------------------------------------
# 9.2 Multiple Linear Regression
# ------------------------------------------------------------

multi_model <- lm(
  Median.Home.Value ~ Crime.Rate +
    Average.Rooms +
    Public.Transport.Access +
    Number.of.Schools,
  data = data
)

summary(multi_model)

# Interpretation:
"1. Overall Significance of the Model

The model is overall significant (F = 394.3, p < 2.2e⁻¹⁶).

It explains 75.9% of the variance in the median housing value (R² = 0.7589), which is almost identical to the simple model.

2. Interpretation of the Explanatory Variables
Average.Rooms

This is the only statistically significant variable (β = 7.19, p < 2e⁻¹⁶).
Each additional room increases the median housing value by approximately 7.2 units, all other things being equal.

Crime.Rate

The coefficient is negative but not significant (p = 0.82).

There is no statistical evidence of an effect of the crime rate on prices in this model.

Public.Transport.Access

Positive but not significant effect (p = 0.74).

Accessibility to public transportation has no measurable impact here.

Number of Schools

The effect is virtually zero and completely insignificant (p = 0.99).
The number of schools does not influence housing values in this context.

3. Residual Analysis

The residuals are centered around zero and very similar to those of the simple model.

The residual standard error (2.71) remains practically unchanged.

4. Comparison with the Simple Model

Adding new variables does not improve the explanatory power of the model.
The adjusted R² decreases slightly, suggesting that these variables do not provide any additional relevant information.

5. Final Conclusion

The multivariate model confirms that Average Rooms is the main determinant of the median housing value. The other variables (crime, transportation, schools) have no significant effect once housing size is taken into account."

# ------------------------------------------------------------
# 9.3 Model Diagnostics
# ------------------------------------------------------------

# Residual plots
par(mfrow = c(2, 2))
plot(multi_model)
par(mfrow = c(1, 1))

# QQ-plot for residual normality
qqnorm(residuals(multi_model))
qqline(residuals(multi_model), col = "red")

# Variance Inflation Factor
vif(multi_model)

# Interpretation:
"Model Diagnostics Interpretation

Residuals vs Fitted & Scale-Location: Residuals are randomly scattered around zero with roughly constant spread, indicating linearity and homoscedasticity.

Q-Q Plots: Residuals mostly follow the theoretical line, suggesting approximate normality, with only minor deviations at the tails.

Residuals vs Leverage: No points show high leverage, indicating no influential outliers affecting the model.

Variance Inflation Factor (VIF): All VIFs ≈ 1, showing negligible multicollinearity among predictors.

Conclusion: Model assumptions are well satisfied. The regression results are reliable, and the coefficients can be confidently interpreted."


# ============================================================
# 10. Regression Scatter Plot
# ============================================================

ggplot(data, aes(x = Average.Rooms, y = Median.Home.Value)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", col = "red", se = TRUE) +
  labs(
    title = "Regression Scatter Plot of Average Rooms vs Median Home Value",
    x = "Average Rooms",
    y = "Median Home Value"
  ) +
  theme_minimal()

# Interpretation:
"A clear positive linear relationship is observed between the two variables: as the average number of rooms increases, the median value of dwellings also tends to increase. This indicates that more spacious dwellings are generally associated with higher prices in the real estate market.

The dispersion of points around the regression line remains relatively moderate, suggesting that the average number of rooms is a good predictor of dwelling values, even though other factors can also influence prices (such as the crime rate, access to public transportation, or the number of schools).

Finally, the absence of any obvious non-linear structure and the overall upward trend confirm that the use of a linear regression model is appropriate for analyzing this relationship."





