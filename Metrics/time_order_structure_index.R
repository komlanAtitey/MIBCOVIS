
TimeOrderStructureLearning <- function(reduced_data, label_vector){
 
  ########
  ######## functions to create W x W matrix
 
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
 
  ########################################
  ######################################## first part run
  ########################################
 
  r.data <- data.frame(reduced_data)
  n.row.subdata <- 18000
  num_datasets <- floor(dim(r.data)[1]/n.row.subdata + 1)
  rm(reduced_data)
  limit <- dim(data.frame(r.data))[1]-1
  data_kodjo_phate <- markov_process_atitey(r.data, limit)
  rm(split_matrix_atitey)
  rm(run_chain_atitey)
  rm(markov_process_atitey)
  rm(r.data)
  #
  groups <- data.frame(label_vector)
  groups <- groups[1:dim(groups)[1]-1,]
  groups <- data.frame(groups)
  colnames(groups) <- "cluster"
  label <- as.numeric(groups$cluster)
  rm(groups)
  rm(label_vector)
  data.set <- cbind(data_kodjo_phate,label)
  rm(data_kodjo_phate)
 
  ########
  ######## function spliting data
 
  split_data_by_rows_atitey <- function(data, chunk_size) {
    num_rows <- nrow(data)
    if (chunk_size <= 0 || chunk_size > num_rows) {   # Check if chunk_size is valid
      stop("Invalid chunk size.")
    }
    num_chunks <- ceiling(num_rows / chunk_size)  # Calculate the number of chunks
    data_chunks <- vector("list", length = num_chunks) # Create a list to store the chunks
    for (i in seq_along(data_chunks)) { # Split the data into chunks
      start_row <- (i - 1) * chunk_size + 1
      end_row <- min(i * chunk_size, num_rows)
      data_chunks[[i]] <- data[start_row:end_row, , drop = FALSE]
    }
    return(data_chunks)
  }
 
  ########################################
  ######################################## second part run: save spliting data
  ########################################
 
  chunks <- split_data_by_rows_atitey(data.set, chunk_size = n.row.subdata) # Split the data into chunks
  rm(data.set)
 
  for (i in 1:num_datasets) {
    dataset <- chunks[[i]]  # Create a dataset (replace this with your actual dataset creation logic)
    dataset_name <- paste("dataset_", i, sep = "")  # Create a unique name for the dataset
    save(dataset, file = paste0(dataset_name, ".RData"))  # Save the dataset as an RData file
  }
  rm(chunks)
  rm(dataset)
 
  ########
  ######## function to weight data
  
  weight_markov_process_atitey <- function(data.set) {
    counts <- table(data.set$label) # Count occurrences of each label
    num_cells <- sum(counts) # Calculate the total number of cells
    data.set$label <- as.numeric(data.set$label) # Convert label to numeric
    for (i in unique(data.set$label)) {
 
      weight <- counts[i] / num_cells # Calculate the weight for the current label
      data.set[is.na(data.set)] <- 0
      data.set[data.set$label == i, ] <- weight * data.set[data.set$label == i, ] # Update rows where label matches
    }
    data.set <- data.set[, -ncol(data.set)]# Remove the label column
    data.set <- floor(data.set) # Floor the entire matrix
    return(data.set)
  }
 
  ########
  ######## function cumulative matrix
 
  cumulative_markov_process_atitey <- function(run_chain_matrix) {
    cumulative_matrix <- lapply(1:limit, function(k){cumsum(run_chain_matrix[[k]] == 1)/seq_along(run_chain_matrix[[k]] == 1)})
    cumulative_matrix <- data.frame(cumulative_matrix)
    kodjo_run <- lapply(1:limit, function(l) {rowMeans(cumulative_matrix[l], na.rm = TRUE) })
    kodjo_run <- data.frame(kodjo_run)
    kodjo_run <- rowMeans(kodjo_run)
    colnames(kodjo_run) <- NULL
    return(kodjo_run)
  }
 
  ########################################
  ######################################## third part run: loading different data and weight data
  ########################################
 
  data <- character()
  for (i in 1:num_datasets) {
    data <- c(data, paste0("dataset_", i, ".RData"))
  }
 
  for (i in 1:num_datasets) { # Use a for loop to load each dataset
    #paste0("dataset_", i, ".RData")   # Construct the file name
    file_name <- data[i]
    load(file_name)   # Load the dataset
    data.file <- data.frame(dataset)
    wei.data <- weight_markov_process_atitey(data.file)
    limit <- dim(data.file)[1]-1
    cumul.wei.data <- cumulative_markov_process_atitey(wei.data)
   
    dataset_name <- paste("cumul.wei.data_", i, sep = "")  # Create a unique name for the dataset
    save(cumul.wei.data, file = paste0(dataset_name, ".RData"))  # Save the dataset as an RData file
    rm(file_name)
    rm(dataset)
    rm(data.file)
    rm(wei.data)
  }
 
  ########
  ######## function scoring metric
 
  data_structure_index_atitey <- function(markov_data){
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
 
  ########################################
  ######################################## fourth part run: weigh data and score method
  ########################################
 
  weighted.data <- c()
  for (i in 1:num_datasets) {
    load(paste0("cumul.wei.data_", i, ".RData"))
    new.weight.data <- cumul.wei.data
    weighted.data <- c(weighted.data, new.weight.data)
    rm(new.weight.data)
  }
 
  ti.metric <- data_structure_index_atitey(weighted.data)
  ti.metric <- data.frame(ti.metric)
  ti.metric <- as.numeric(ti.metric)
 
  return(ti.metric)
}
 
 
 
