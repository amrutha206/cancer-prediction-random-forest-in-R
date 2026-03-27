# 🧠 Cancer Prediction using Random Forest in R

## 📌 Problem Statement

Early detection of cancer is critical in healthcare. This project builds a machine learning model to classify tumors as **Benign** or **Malignant** using the Breast Cancer Wisconsin dataset.

---

## 📊 Dataset

* Source: `mlbench` package in R
* Total observations: **683**
* Features: 9 numerical predictors
* Target variable: Tumor Class (Benign / Malignant)
  
---

## 🤖 Why Random Forest?
- Handles complex, non-linear relationships effectively  
- Reduces overfitting using ensemble learning  
- Provides feature importance for interpretability

---
## ⚖️ Handling Class Imbalance
Class weights were applied to give higher importance to malignant cases, improving the model’s ability to detect cancer and reduce critical errors.
---

## ⚙️ Workflow

### 1. Data Preprocessing

* Removed irrelevant ID column
* Handled missing values (`?` → NA → removed)
* Converted features to numeric format
* Converted target variable to factor

---

### 2. Model Building

* Algorithm: **Random Forest**
* Trees used: **200**
* Class weighting applied to reduce bias toward benign cases

---

### 3. Train-Test Split

* 80% Training
* 20% Testing

---

## 📈 Model Performance

### 🔹 Confusion Matrix

```
           Reference
Prediction  Benign Malignant
  Benign        85         2
  Malignant      3        45
```

### 🔹 Key Metrics

* **Accuracy:** 96.3%
* **Sensitivity (Benign):** 96.59%
* **Specificity (Malignant):** 95.74%
* **Balanced Accuracy:** 96.17%
* **Kappa Score:** 0.9188

---

## 📊 ROC Curve & AUC

* AUC Score: **0.9964**

> The model demonstrates excellent classification performance with near-perfect separability.
>  **AUC Score: 0.9964 (Excellent model performance)**

---

## 🌳 Feature Importance

Top contributing features:

| Feature      | Importance |
| ------------ | ---------- |
| Cell.size    | 66.21      |
| Cell.shape   | 57.74      |
| Bare.nuclei  | 38.43      |
| Epith.c.size | 28.70      |



---

## 💡 Business Impact
This model can support early cancer detection by accurately classifying tumors as benign or malignant.  
In medical applications, minimizing false negatives is critical to ensure malignant cases are not missed.

---

## ⚠️ Key Insight

Although the model achieves high accuracy, it produces a small number of **false negatives (3 cases)**, which is critical in medical diagnosis. Reducing these errors is a priority for future improvements.
Cell size and cell shape are the most influential features in predicting cancer, indicating their strong role in tumor classification.

---

## 🛠 Tech Stack

* R Programming
* caret
* randomForest
* pROC

---

## 🚀 Future Improvements

* Hyperparameter tuning
* Cross-validation
* Reduce false negatives
* Deploy using Shiny web app

---
## ⚠️ Limitations
- Dataset size is relatively small  
- No external validation performed  
- Not suitable for real-world clinical use without further testing  
---

## 🎯 Conclusion

The Random Forest model provides strong predictive performance for cancer classification. With further optimization, it can be adapted for real-world diagnostic support systems.The Random Forest model demonstrates strong predictive performance with high accuracy and excellent AUC. With further optimization, it can be extended for real-world diagnostic support systems.
