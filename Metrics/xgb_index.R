
libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

# Gradient boosting classifier index
xgb_index <- function(dataset, groups, k){
  test <- xgboost(as.matrix(dataset), as.numeric(groups) - 1, objective = "multi:softmax", num_class=length(table(groups)), nrounds = k, max.depth=3, subsample=0.8)
  return(mean((as.numeric(groups) - 1) == predict(test, as.matrix(dataset))))
}