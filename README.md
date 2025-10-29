# 🩺 Prediction of Lung Cancer Using Logistic Regression Analysis  

![R](https://img.shields.io/badge/Language-R-blue?style=flat-square) 
![Tool](https://img.shields.io/badge/Tool-RStudio-lightgrey?style=flat-square) 
![License](https://img.shields.io/badge/License-Academic-green?style=flat-square) 
![Accuracy](https://img.shields.io/badge/Model%20Accuracy-85.37%25-success?style=flat-square)

---

## 📘 Overview  
This project develops a **logistic regression model** to predict the likelihood of **lung cancer** using patient health and lifestyle data.  
Using **R programming**, the model identifies significant predictors such as **smoking, fatigue, chronic disease, and shortness of breath**, achieving an overall accuracy of **85.37%**.  

This project was completed as part of the **M.Sc. Statistics (2024–2025)** program at **Acharya Nagarjuna University**.

---

## 🎯 Objectives
- To identify key risk factors contributing to lung cancer.  
- To develop a predictive model using **logistic regression** in R.  
- To evaluate model performance using accuracy and deviance metrics.  
- To interpret statistical results to assist in early detection and awareness.

---

## 🧠 Methodology  

### 🔹 Steps Followed:
1. **Data Collection** — Lung cancer dataset obtained from Kaggle.  
2. **Data Cleaning** — Handled missing values and outliers.  
3. **Feature Encoding** — Converted categorical variables (e.g., gender, smoking) into numeric format.  
4. **Model Building** — Applied logistic regression using R’s `glm()` function.  
5. **Model Evaluation** — Measured accuracy, AIC, and significance levels of predictors.  
6. **Interpretation** — Identified major risk indicators influencing lung cancer.

---

## 📊 Dataset Information  

| Variable | Description |
|-----------|-------------|
| GEN | Gender (Male/Female) |
| AGE | Age of the patient |
| SMOK | Smoking status |
| Y.FINGURE | Yellowing of fingers (smoking indicator) |
| PRESSURE | Blood pressure |
| C.DISEASE | Chronic disease presence |
| FATIGUE | Fatigue/Tiredness |
| ALLERGY | Allergy status |
| COUGH | Persistent coughing |
| S.BREATH | Shortness of breath |
| LC | Target variable (1 = Cancer, 0 = No Cancer) |

---


