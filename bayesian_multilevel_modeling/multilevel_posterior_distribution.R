
libs <- c("ggplot2", "sandwich", "strucchange", "rstan", "brms", "bayesplot", "tidyr", "dplyr", "ggmcmc",
          "patchwork", "tidybayes", "xts", "zoo", "PerformanceAnalytics")

lapply(libs, library, character.only = TRUE)

################# data preparation
#accuracy_range <- seq(min_value, max_value, length=250)
accuracy_range_emt <- seq(0.73,0.983,length=250)
accuracy_range_ipsc <- seq(0.62,0.93,length=250)
accuracy_range_sperm <- seq(0.570,0.7594,length=250)

accuracy <- sort(accuracy_range_emt, decreasing = FALSE) 
sequence <- seq(0, 1, length=250)
beta <- pbeta(sequence, 1, 1)
#
d_tsne <- data.frame(Accuracy = accuracy,
                     Int_tsne = beta,
                     Xgb = xgb_tsne_emt,
                     Separability = sep_tsne_emt,
                     Occupation = occ_tsne_emt,
                     Uniformity = uni_tsne_emt,
                     Time_order = str_tsne_emt)
#
d_umap <- data.frame(Accuracy = accuracy,
                     Int_umap = beta,
                     Xgb = xgb_umap_emt,
                     Separability = sep_umap_emt,
                     Occupation = occ_umap_emt,
                     Uniformity = uni_umap_emt,
                     Time_order = str_umap_emt)
#
d_pca <- data.frame(Accuracy = accuracy,
                    Int_pca = beta,
                    Xgb = xgb_pca_emt,
                    Separability = sep_pca_emt,
                    Occupation = occ_pca_emt,
                    Uniformity = uni_pca_emt,
                    Time_order = str_pca_emt)
#
d_ae <- data.frame(Accuracy = accuracy,
                   Int_ae = beta,
                   Xgb = xgb_ae_emt,
                   Separability = sep_ae_emt,
                   Occupation = occ_ae_emt,
                   Uniformity = uni_ae_emt,
                   Time_order = str_ae_emt)
#
d_scvis <- data.frame(Accuracy = accuracy,
                      Int_scvis = beta,
                      Xgb = xgb_scvis_emt,
                      Separability = sep_scvis_emt,
                      Occupation = occ_scvis_emt,
                      Uniformity = uni_scvis_emt,
                      Time_order = str_scvis_emt)
#
d_phate <- data.frame(Accuracy = accuracy,
                      Int_phate = beta,
                      Xgb = xgb_phate_emt,
                      Separability = sep_phate_emt,
                      Occupation = occ_phate_emt,
                      Uniformity = uni_phate_emt,
                      Time_order = str_phate_emt)

################# compute the posterior distribution 
#########
######### tsne
model.tsne <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                 phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_tsne <- get_prior(model.tsne, data = d_tsne, family = Beta())
bm_post_tsne <- brm(model.tsne, data = d_tsne, family = Beta(), prior=bm_prior_tsne, control = NULL, 
                    chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_tsne_emt <- bm_post_tsne
save(bm_post_tsne_emt, file = "bm_post_tsne_emt.rdata")
#########
######### umap
model.umap <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                 phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_umap <- get_prior(model.umap, data = d_umap, family = Beta())
bm_post_umap <- brm(model.umap, data = d_umap, family = Beta(), prior=bm_prior_umap, control = NULL, 
                    chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_umap_emt <- bm_post_umap
save(bm_post_umap_emt, file = "bm_post_umap_emt.rdata")
#########
######### pca
model.pca <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_pca <- get_prior(model.pca, data = d_pca, family = Beta())
bm_post_pca <- brm(model.pca, data = d_pca, family = Beta(), prior=bm_prior_pca, control = NULL, 
                   chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_pca_emt <- bm_post_pca
save(bm_post_pca_emt, file = "bm_post_pca_emt.rdata")
#########
######### ae
model.ae <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
               phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_ae <- get_prior(model.ae, data = d_ae, family = Beta())
bm_post_ae <- brm(model.ae, data = d_ae, family = Beta(), prior=bm_prior_ae, control = NULL, 
                  chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_ae_emt <- bm_post_ae
save(bm_post_ae_emt, file = "bm_post_ae_emt.rdata")
#########
######### vae
model.vae <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_vae <- get_prior(model.vae, data = d_vae, family = Beta())
bm_post_vae <- brm(model.vae, data = d_vae, family = Beta(), prior=bm_prior_vae, control = NULL, 
                   chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_vae_emt <- bm_post_vae
save(bm_post_vae_emt, file = "bm_post_vae_emt.rdata")
#########
######### scvis
model.scvis <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                  phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_scvis <- get_prior(model.scvis, data = d_scvis, family = Beta())
bm_post_scvis <- brm(model.scvis, data = d_scvis, family = Beta(), prior=bm_prior_scvis, control = NULL, 
                     chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_scvis_emt <- bm_post_scvis
save(bm_post_scvis_emt, file = "bm_post_scvis_emt.rdata")
#########
######### phate
model.phate <- bf(Accuracy ~ Xgb + Separability + Occupation + Uniformity + Time_order ,
                  phi ~ Xgb + Separability + Occupation + Uniformity + Time_order)
bm_prior_phate <- get_prior(model.phate, data = d_phate, family = Beta())
bm_post_phate <- brm(model.phate, data = d_phate, family = Beta(), prior=bm_prior_phate, control = NULL, 
                     chains = 4, cores = getOption("mc.cores", 1), iter = 2000, warmup = floor(2000/2))
bm_post_phate_emt <- bm_post_phate
save(bm_post_phate_emt, file = "bm_post_phate_emt.rdata")



