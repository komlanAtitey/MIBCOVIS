libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

similarity_index <- function(dataset, groups, k=1){
  knn1 = nn2(dataset, dataset, k=k+1)
  a = matrix(1, length(groups), 1)
  for (j in 1:k){
    a = a * (groups[knn1$nn.idx[, 1]] == groups[knn1$nn.idx[, 1+j]])
  }
  return(mean(a))
}