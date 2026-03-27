library(mlbench)
library(caret)
library(randomForest)
library(e1071)

data(BreastCancer)

dataset <- Brea
stCancer[, -1]

dataset[dataset == "?"] <- NA

dataset[, -10] <- lapply(dataset[, -10], function(x) as.numeric(as.character(x)))

dataset$Class <- as.factor(dataset$Class)

dataset <- na.omit(dataset)

levels(dataset$Class) <- c("Benign", "Malignant")

cat("Rows:", nrow(dataset), "\n")
print(table(dataset$Class))
cat("Total NA:", sum(is.na(dataset)), "\n")

if(nrow(dataset) < 10) stop("Dataset too small — cleaning issue")
if(length(unique(dataset$Class)) < 2) stop("Only one class present — cannot train model")

set.seed(123)

trainIndex <- createDataPartition(dataset$Class, p = 0.8, list = FALSE)

trainData <- dataset[trainIndex, ]
testData  <- dataset[-trainIndex, ]

model <- randomForest(Class ~ ., data = trainData, ntree = 100)

print(model)

predictions <- predict(model, testData)

conf_matrix <- confusionMatrix(predictions, testData$Class)
print(conf_matrix)

write.csv(dataset, "cancer_dataset.csv", row.names = FALSE)

saveRDS(model, "cancer_rf_model.rds") 

model <- randomForest(Class ~ ., data = trainData, ntree = 200, classwt = c(1,2))

library(pROC)

prob <- predict(model, testData, type = "prob")

roc_curve <- roc(testData$Class, prob[,2])

plot(roc_curve)
auc(roc_curve)

importance(model)
varImpPlot(model)

list.files()

png("roc_curve.png")
plot(roc_curve, col="blue", main="ROC Curve")
dev.off()

png("feature_importance.png")
varImpPlot(model)
dev.off()