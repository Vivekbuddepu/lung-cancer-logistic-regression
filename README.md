# 🩺 Prediction of Lung Cancer Using Logistic Regression Analysis  

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

## 🧰 Technologies Used
- R
- RStudio
- ggplot2, glm , dplyr
 

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


## 📂 Files in this Repository
- `lung_cancer_data.csv` – Dataset used for analysis  
- `logistic_regression.R` – Model building and evaluation code  
- `lung_cancer_project.pdf` – Detailed project report  
- `lung_cancer_presentation.pptx` – Project presentation slides  


----


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
## 👨‍💻 Author
**Buddepu Vivek**  
Data Analyst Enthusiast | [LinkedIn](https://www.linkedin.com/in/buddepu-vivek/)


