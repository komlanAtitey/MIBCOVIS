libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

# Occupation index
coverage_index <- function(dataset, num_grid){ # num_grid=100
  scaled_dataset <- scale(dataset)
  result <- matrix(0, num_grid, num_grid)
  
  for (i in 1:nrow(dataset)){
    a = as.integer(0.33 * num_grid * scaled_dataset[i, 1:2] + 0.5 * num_grid)
    if (sum((a > 0)*(a <= num_grid))==2){
      result[a[1], a[2]] = result[a[1], a[2]] + 1
    }
  }
  result = mean(result > 0)
  return(result)
}