###############################################################
# Project Title: Prediction of Lung Cancer Using Logistic Regression
# Author: A. Devi Likitha (Y24ST20002)
# Supervisor: Dr. A. Vasudeva Rao
# Institution: Acharya Nagarjuna University
# Year: 2025
###############################################################

# -------------------------------
# 1️⃣ Load Required Libraries
# -------------------------------
library(ggplot2)
library(dplyr)


# Import the Dataset

data = read.csv("LUNGDATA1.csv", header = TRUE)

# View the first few rows of the dataset
head(data)
str(data)
summary(data)


# Data Preprocessing

# Check for missing values
colSums(is.na(data))

# Convert categorical variables (if necessary)
# Assuming GEN, SMOK, Y.FIGURE, etc., are coded numerically (0/1)
# If not, convert them:
# data$GEN = as.factor(data$GEN)
# data$SMOK = as.factor(data$SMOK)


# Build Logistic Regression Model

lcfit = glm(
  LC ~ GEN + AGE + SMOK + Y.FIGURE + PRESSURE + C.DISEASE +
        FATIGUE + ALLERGY + COUGH + S.BREATH,
  family = binomial,
  data = data
)


# Model Summary

summary(lcfit)

# Calculate odds ratios
exp(cbind(Odds_Ratio = coef(lcfit), confint(lcfit)))


# Evaluate Model Performance

# Get fitted probabilities
fitted_probs <- predict(lcfit, type = "response")

# Convert probabilities to 0/1 predictions
predicted_class <- ifelse(fitted_probs > 0.5, 1, 0)

# Create confusion matrix
conf_matrix <- table(Actual = data$LC, Predicted = predicted_class)
print(conf_matrix)

# Calculate accuracy
accuracy <- mean(predicted_class == data$LC)
cat("Training Accuracy:", round(accuracy * 100, 2), "%\n")

# -------------------------------
# Test the Model with New Data
# -------------------------------
test_data <- read.csv("TEST_DATA1.csv", header = TRUE)

# Predict on test data
predicted_probs_test <- predict(lcfit, newdata = test_data, type = "response")
predicted_class_test <- ifelse(predicted_probs_test > 0.5, 1, 0)

# Compare predictions with actual test outcomes
conf_matrix_test <- table(Actual = test_data$LC, Predicted = predicted_class_test)
print(conf_matrix_test)

# Calculate test accuracy
test_accuracy <- mean(predicted_class_test == test_data$LC)
cat("Test Accuracy:", round(test_accuracy * 100, 2), "%\n")


# Visualization

# Plot of predicted probabilities
ggplot(data, aes(x = fitted_probs, fill = as.factor(LC))) +
  geom_histogram(binwidth = 0.05, alpha = 0.7, position = "identity") +
  labs(
    title = "Distribution of Predicted Probabilities",
    x = "Predicted Probability of Lung Cancer",
    y = "Count",
    fill = "Actual Class"
  ) +
  theme_minimal()

# Plot model coefficients
coef_df <- data.frame(
  Variable = names(coef(lcfit))[-1],
  Coefficient = coef(lcfit)[-1]
)

ggplot(coef_df, aes(x = reorder(Variable, Coefficient), y = Coefficient)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  labs(
    title = "Logistic Regression Coefficients",
    x = "Predictor Variables",
    y = "Coefficient Estimate"
  ) +
  theme_minimal()


# Save Results

write.csv(conf_matrix, "results/confusion_matrix_train.csv", row.names = TRUE)
write.csv(conf_matrix_test, "results/confusion_matrix_test.csv", row.names = TRUE)

cat("✅ Model execution completed successfully.\n")
cat("Results saved in the 'results' folder.\n")
