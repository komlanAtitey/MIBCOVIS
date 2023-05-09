
libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

###################
################### function

libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

parse_config <- function(config_file){
  if (is.null(config_file)){
    config = list()
  }else{
    config = fromJSON(file=config_file)
  }
  return(config)
}

fit <- function(dataset, config_file=NULL){
  ## simplifying the inner part of the model
  set.seed(123)
  
  #tf.compat.v1.reset_default_graph()
  
  tf$reset_default_graph()
  
  config <- parse_config(config_file)
  input_dim <- dim(dataset)[2]
  
  if ("activation" %in% names(config)){
    if (config["activation"] == "sigmoid"){
      activation = tf$nn$sigmoid
    }else if(config["activation"] == "relu"){
      activation = tf$nn$relu
    }else if(config["activation"] == "elu"){
      activation = tf$nn$elu
    }else if(config["activation"] == "tanh"){
      activation = tf$nn$tanh
    }
  }else{
    activation = tf$nn$elu
  }
  
  if (!("batch_size" %in% names(config))){
    batch_size = 128
  }else{
    batch_size = as.integer(config["batch_size"])
  }
  if (!("n_epochs" %in% names(config))){
    n_epochs = 20
  }else{
    n_epochs = as.integer(config["n_epochs"])
  }
  if (!("l_vae" %in% names(config))){
    l_vae = 0.25
  }else{
    l_vae = as.numeric(config["l_vae"])
  }
  if (!("l_contrac" %in% names(config))){
    l_contrac = 0.0
  }else{
    l_contrac = as.numeric(config["l_contrac"])
  }
  if (!("low_dim" %in% names(config))){
    low_dim = 2
  }else{
    low_dim = as.integer(config["low_dim"])
  }
  if (!("l_reg" %in% names(config))){
    l_reg = 0.00
  }else{
    l_reg = as.numeric(config["l_reg"])
  }
  if (!("batch_norm" %in% names(config))){
    batch_norm = FALSE
  }else{
    batch_norm = as.logical(config["batch_norm"])
  }
  if (!("denoising" %in% names(config))){
    denoising = FALSE
  }else{
    denoising = as.logical(config["denoising"])
  }
  if (!("dropout" %in% names(config))){
    dropout = 0.3
  }else{
    dropout = as.numeric(config["dropout"])
  }
  if (!("sampling" %in% names(config))){
    sampling = 100
  }else{
    sampling = as.integer(config["sampling"])
  }
  if (!("encode" %in% names(config))){
    config_encode = "[4]"
  }else{
    config_encode = config["encode"]
  }
  if (!("decode" %in% names(config))){
    config_decode = "[4]"
  }else{
    config_decode = config["decode"]
  }
  
  if (denoising){
    l_vae = 0
    l_contrac = 0
  }
  
  main_input <-  tf$placeholder(tf$float32,shape=list(NULL, input_dim), name="main_input")
  training_placeholder <-  tf$placeholder(tf$bool,shape=list(NULL, 1), name="training_placeholder")
  
  encode = unlist(strsplit(substr(config_encode, low_dim, nchar(config_encode)-1), split=", "))
  decode = unlist(strsplit(substr(config_decode, low_dim, nchar(config_decode)-1), split=", "))
  encode = c(input_dim, encode)
  decode = c(low_dim, decode)
  
  weights_encode = c()
  bias_encode = c()
  count = 1
  if (length(encode) > 1){
    for (i in encode[2:length(encode)]){
      weights_encode = c(weights_encode, tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(encode[[count]]), as.integer(i)))))
      bias_encode = c(bias_encode, tf$Variable(tf$keras$initializers$zeros()(list(as.integer(i)))))
      count = count + 1
    }
  }
  
  mean_arr_activated <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(encode[[length(encode)]]), as.integer(low_dim))))
  mean_bias_activated <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(low_dim))))
  mean_arr <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(low_dim), as.integer(low_dim))))
  mean_bias <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(low_dim))))
  
  std_arr_activated <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(encode[[length(encode)]]), as.integer(low_dim))))
  std_bias_activated <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(low_dim))))
  std_arr <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(low_dim), as.integer(low_dim))))
  std_bias <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(low_dim))))
  
  z_encode <- c()
  a_encode <- c(main_input)
  if (denoising){
    a_encode[[1]] = tf$layers$dropout(main_input, rate=dropout, training=training_placeholder[1, 1])
  }
  count = 1
  for (i in weights_encode){
    z_encode = c(z_encode, tf$layers$batch_normalization(tf$matmul(a_encode[[count]], weights_encode[[count]]) + bias_encode[[count]], training=training_placeholder[1, 1]))
    a_encode = c(a_encode, activation(z_encode[[count]]))
    count = count + 1
  }
  mean_normalized <- tf$layers$batch_normalization(tf$matmul(a_encode[[length(a_encode)]], mean_arr_activated) + mean_bias_activated, training=training_placeholder[1, 1])
  mean_activated <- activation(mean_normalized)
  mean <- tf$matmul(mean_activated, mean_arr) + mean_bias
  
  std_normalized <- tf$layers$batch_normalization(tf$matmul(a_encode[[length(a_encode)]], std_arr_activated) + std_bias_activated, training=training_placeholder[1, 1])
  std_activated <- activation(std_normalized)
  std <- tf$matmul(std_activated, std_arr) + std_bias
  
  if (l_vae > 0){
    sample <- tf$expand_dims(mean, as.integer(1)) + tf$expand_dims(tf$exp(0.5 * std), as.integer(1)) * tf$random_normal(list(tf$shape(mean)[1], as.integer(100), as.integer(low_dim)))
  }else{
    sample <- tf$expand_dims(mean, as.integer(1))
  }
  
  weights_decode = c()
  bias_decode = c()
  count = 1
  if (length(decode) > 1){
    for (i in decode[2:length(decode)]){
      weights_decode = c(weights_decode, tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(decode[[count]]), as.integer(i)))))
      bias_decode = c(bias_decode, tf$Variable(tf$keras$initializers$zeros()(list(as.integer(i)))))
      count = count + 1
    }
  }
  
  out_arr_activated <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(decode[[length(decode)]]), as.integer(input_dim))))
  out_bias_activated <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(input_dim))))
  out_arr <- tf$Variable(tf$keras$initializers$glorot_uniform()(c(as.integer(input_dim), as.integer(input_dim))))
  out_bias <- tf$Variable(tf$keras$initializers$zeros()(list(as.integer(input_dim))))
  
  z_decode = list()
  a_decode = list(sample)
  count = 1
  for (i in weights_decode){
    z_decode = append(z_decode, tf$einsum("ijk,kl->ijl", a_decode[[count]], weights_decode[[count]]) + bias_decode[[count]])
    a_decode = append(a_decode, activation(z_decode[[count]]))
    count = count + 1
  }
  
  out_activated = activation(tf$einsum("ijk,kl->ijl", a_decode[[length(a_decode)]], out_arr_activated) + out_bias_activated)
  out = tf$einsum("ijk,kl->ijl", out_activated, out_arr) + out_bias
  
  out_tensor = tf$squeeze(out)
  
  g1 <- tf$reduce_sum(mean_activated, axis=as.integer(0))
  contraction_loss <- tf$reduce_mean(tf$square(tf$gradients(g1[1], main_input))) + tf$reduce_mean(tf$square(tf$gradients(g1[2], main_input)))
  
  mse_loss <- tf$reduce_mean(tf$squared_difference(out, tf$expand_dims(main_input, as.integer(1))))
  vae_loss <- -0.5 * tf$reduce_mean(1 + std - tf$square(mean) - tf$exp(std))
  
  regularization <- 0
  for (i in weights_encode){
    regularization = regularization + tf$nn$l2_loss(i)
  }
  for (i in weights_decode){
    regularization = regularization + tf$nn$l2_loss(i)
  }
  regularization = regularization + tf$nn$l2_loss(out_arr_activated)
  regularization = regularization + tf$nn$l2_loss(out_arr)
  regularization = regularization + tf$nn$l2_loss(mean_arr_activated)
  regularization = regularization + tf$nn$l2_loss(mean_arr)
  regularization = regularization + tf$nn$l2_loss(std_arr_activated)
  regularization = regularization + tf$nn$l2_loss(std_arr)
  
  optimizer <- tf$train$AdamOptimizer()
  loss <- mse_loss + l_vae * vae_loss + l_contrac * contraction_loss + l_reg * regularization
  train <- optimizer$minimize(loss)
  
  sess = tf$Session()
  
  sess$run(tf$global_variables_initializer())
  # saver <- tf$train$Saver(tf$trainable_variables())
  
  for (i in 1:n_epochs){
    n_steps = as.integer(dim(dataset)[1] %/% batch_size + 1)
    prog = tf$keras$utils$Progbar(target=n_steps)
    tf_dataset = tf$data$Dataset$from_tensor_slices(as.matrix(dataset))
    tf_dataset = tf_dataset$shuffle(as.integer(100000))
    tf_dataset = tf_dataset$batch(as.integer(batch_size))
    it_train_x = tf_dataset$make_one_shot_iterator()
    next_sample = it_train_x$get_next()
    continue=TRUE
    add_count = 0
    print(paste("Epoch ", i, "/", n_epochs))
    while(continue){
      res = tryCatch({
        x = sess$run(next_sample)
        res = sess$run(list(train, loss, contraction_loss, mse_loss, vae_loss), feed_dict=dict(main_input=x, training_placeholder=as.matrix(batch_norm||denoising)))
      }, error = function(e) {
        continue=FALSE
      })
      if (typeof(res) == "logical"){
        continue = FALSE
      }else{
        add_count = add_count + 1
        prog$update(add_count, values=list(list("loss", res[[2]]),
                                           list("contraction_loss", res[[3]]),
                                           list("mse_loss", res[[4]]),
                                           list("vae_loss", res[[5]])))
      }
    }
  }
  
  if (denoising){
    output_tensor = tf$identity(out_tensor, name="output")
  }else{
    output_tensor = tf$identity(mean, name="output")
  }
  
  projectedData = sess$run(output_tensor, feed_dict=dict(main_input=as.matrix(dataset), training_placeholder=as.matrix(FALSE)))
  print("Data projected")
  
  return(list(projectedData=projectedData, projector=list(sess, main_input, output_tensor, training_placeholder)))
}


predict.list <- function(projector, dataset){
  
  main_input = projector[[2]]
  training_placeholder = projector[[4]]
  projectedData = projector[[1]]$run(projector[[3]], feed_dict=dict(main_input=dataset, training_placeholder=as.matrix(FALSE)))
}

###################
################### plotting

main <- function(config_path=NULL){
  libs <- c("tensorflow", "RANN", "xgboost", "rjson", "ggplot2")
  lapply(libs, library, character.only = TRUE)
  path = "./config"
  
  if (is.null(config_path)){
    config=NULL
  }else{
    config=paste(path, config_path, sep="/")
  }
  projected = fit(sc_data_labeled, config=config) # , save_paths="./model1")
  # save(projected, file = "projected.RData")
  loss_project = projected$projector
  save(loss_project, file = "loss_project.RData")
  vaedat <- projected$projectedData
  qplot(vaedat[, 1], vaedat[, 2], color=groups) + xlab("vae 1") + ylab("vae 2")
  
}
main(config_path = NULL)


