library(tidyverse)
library(dplyr)
library(markovchain)

split_matrix_atitey <- function(dataset) {
  limit <- dim(data.frame(dataset))[1]-1 
  dataset <- abs(dataset) / rowSums(abs(dataset))
  matrix_square <- lapply(1:limit, function(i) {rbind(dataset[i,], dataset[i+1,])}) 
  matrix_square <- unname(matrix_square)
  return(matrix_square)
}

run_chain_atitey <- function(square_matrix, steps) {
  first.step <- lapply(1:nrow(square_matrix), function(i){sample(nrow(square_matrix), 1, pr=square_matrix[i,])})
  second.step <- lapply(steps, function(first.step){10*rnorm(first.step)}) # 
  second.step <- data.frame(second.step)
  second.step <- abs(second.step)
  second.step <- floor(second.step)
  colnames(second.step) <- "New_Name1"
  return(second.step)
}

markov_process_atitey <- function(dataset, steps) {
  transition_matrix <- split_matrix_atitey(dataset)
  run_chain <- lapply(1:limit, function(i) {run_chain_atitey(transition_matrix[[i]], steps) }) 
  run_chain <- data.frame(run_chain)
  colnames(run_chain) <- NULL
  return(run_chain) 
}

cumulative_markov_process_atitey <- function(run_chain_matrix) {
  cumulative_matrix <- lapply(1:limit, function(k){cumsum(run_chain_matrix[[k]] == 1)/seq_along(run_chain_matrix[[k]] == 1)})
  cumulative_matrix <- data.frame(cumulative_matrix)
  kodjo_run <- lapply(1:limit, function(l) {rowMeans(cumulative_matrix[l], na.rm = TRUE) }) 
  kodjo_run <- data.frame(kodjo_run)
  kodjo_run <- rowMeans(kodjo_run) 
  colnames(kodjo_run) <- NULL
  return(kodjo_run) 
}

weihgh_markov_process_atitey <- function(data.set) {
  Num_1 <- length(which(data.set$label == "1"))
  Num_2 <- length(which(data.set$label == "2"))
  Num_3 <- length(which(data.set$label == "3"))
  Num_4 <- length(which(data.set$label == "4"))
  Num_5 <- length(which(data.set$label == "5"))
  Num_6 <- length(which(data.set$label == "6"))
  Num_7 <- length(which(data.set$label == "7"))
  Num_8 <- length(which(data.set$label == "8"))
  
  Num_cells <- Num_1+Num_2+Num_3+Num_4+Num_5+Num_6+Num_7+Num_8
  
  data.set$label <- as.numeric(data.set$label)
  data.set <- data.frame(data.set)
  
  data.set[which(data.set$label == 1),] <- (Num_1/Num_cells)*data.set[which(data.set$label == 1),]
  data.set[which(data.set$label == 2),] <- (Num_2/Num_cells)*data.set[which(data.set$label == 2),]
  data.set[which(data.set$label == 3),] <- (Num_3/Num_cells)*data.set[which(data.set$label == 3),]
  data.set[which(data.set$label == 4),] <- (Num_4/Num_cells)*data.set[which(data.set$label == 4),]
  data.set[which(data.set$label == 5),] <- (Num_5/Num_cells)*data.set[which(data.set$label == 5),]
  data.set[which(data.set$label == 6),] <- (Num_6/Num_cells)*data.set[which(data.set$label == 6),]
  data.set[which(data.set$label == 7),] <- (Num_7/Num_cells)*data.set[which(data.set$label == 7),]
  data.set[which(data.set$label == 8),] <- (Num_8/Num_cells)*data.set[which(data.set$label == 8),]
  
  data.set <- data.set[,1:dim(data.frame(data.set))[2]-1]
  
  data.set <- floor(data.set)
  
  return(data.set) 
}

data_structure_index <- function(markov_data){
  frenquency <- data.frame(matrix(ncol = 250, nrow = 1)) #
  sCore <- data.frame(matrix(ncol = 250, nrow = 1))
  sequ <- seq(from = 0, to = 0.16, by = .0006)
  count <- function(x, n){ 
    length((which(abs(x) >= n))) }
  Limit <- 250
  for(i in 1:Limit) {
    for(u in 1:Limit) {
      frenquency[u] <- abs(markov_data[u] - mean(markov_data))
    }
    j <- sequ[i]
    sCore[i] <- count(frenquency, j)
  }
  sCore <- sCore / Limit
  return(sCore)
}

