libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

# Uniformity index
spread_index <- function(dataset, num_grid){  # num_grid=10
  scaled_dataset <- scale(dataset)
  result <- matrix(0, num_grid, num_grid)
  count <- 0
  
  for (i in 1:nrow(dataset)){
    a = as.integer(0.33 * num_grid * scaled_dataset[i, 1:2] + 0.5 * num_grid)
    if (sum((a > 0)*(a <= num_grid))==2){
      count = count + 1
      result[a[1], a[2]] = result[a[1], a[2]] + 1
    }
  }
  result = sum((((result - (count / num_grid / num_grid))**2) / (count / num_grid / num_grid))) 
  
  pval = pchisq(result, df=(num_grid * num_grid)-1, lower.tail=FALSE)
  
  result = result / nrow(dataset) # David Addition
  
  #return(list(result=result, pval=pval)) 
  return(result)  # David Addition
}