
libs <- c("tensorflow", "keras", "RANN", "xgboost", "rjson", "ggplot2")
lapply(libs, library, character.only = TRUE)

library(reticulate)                                                                                                ######
tensorflow::install_tensorflow(version = "1.13.1") 

main <- function(config_path=NULL){
  path = "./config"
  
  if (is.null(config_path)){
    config=NULL
  }else{
    config=paste(path, config_path, sep="/")
  }
  
  projected = fit(emt_data_SL, config=config) # emt_data_SL is the single-cell data of EMT
  loss_project = projected$projector
  emt_vaedat_SL <- projected$projectedData
  qplot(emt_vaedat_SL[, 1], emt_vaedat_SL[, 2], color=groups) + xlab("VAE 1") + ylab("VAE 2")
  ggsave("./fig1.png")
  save(emt_vaedat_SL, file = "emt_vaedat_SL.rdata")
}
main(config_path = NULL)
