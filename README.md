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

(Add your ROC image here)

```
![ROC Curve](roc_curve.png)
```

---

## 🌳 Feature Importance

Top contributing features:

| Feature      | Importance |
| ------------ | ---------- |
| Cell.size    | 66.21      |
| Cell.shape   | 57.74      |
| Bare.nuclei  | 38.43      |
| Epith.c.size | 28.70      |

(Add your plot here)

```
![Feature Importance](feature_importance.png)
```

---

## ⚠️ Key Insight

Although the model achieves high accuracy, it produces a small number of **false negatives (3 cases)**, which is critical in medical diagnosis. Reducing these errors is a priority for future improvements.

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

## 🎯 Conclusion

The Random Forest model provides strong predictive performance for cancer classification. With further optimization, it can be adapted for real-world diagnostic support systems.
