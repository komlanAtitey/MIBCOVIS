setwd("/Users/atiteyk2/Desktop/PROJECT")
getwd()

libs <- c("ggplot2", "sandwich", "strucchange", "rstan", "brms", "bayesplot", "tidyr", "dplyr", "ggmcmc",
          "patchwork", "tidybayes", "xts", "zoo", "PerformanceAnalytics")

lapply(libs, library, character.only = TRUE)
################################################################################
################################################################################
### EMT tsne
load("EMT/emt_metrics_output/occ_tsne_emt.rdata")
load("EMT/emt_metrics_output/sep_tsne_emt.rdata")
load("EMT/emt_metrics_output/xgb_tsne_emt.rdata")
load("EMT/emt_metrics_output/uni_tsne_emt.rdata")
load("EMT/emt_metrics_output/score_tsne.emt.rdata")
struc_tsne <- as.matrix(score_tsne.emt)
str_tsne_emt <- t(struc_tsne)
#
sep_tsne_emt <- (sep_tsne_emt - mean(sep_tsne_emt)/sd(sep_tsne_emt))
xgb_tsne_emt <- (xgb_tsne_emt - mean(xgb_tsne_emt)/sd(xgb_tsne_emt))
occ_tsne_emt <- (occ_tsne_emt - mean(occ_tsne_emt)/sd(occ_tsne_emt))
uni_tsne_emt <- (uni_tsne_emt - mean(uni_tsne_emt)/sd(uni_tsne_emt))
str_tsne_emt <- (str_tsne_emt - mean(str_tsne_emt)/sd(str_tsne_emt))

### EMT umap
load("EMT/emt_metrics_output/occ_umap_emt.rdata")
load("EMT/emt_metrics_output/sep_umap_emt.rdata")
load("EMT/emt_metrics_output/xgb_umap_emt.rdata")
load("EMT/emt_metrics_output/uni_umap_emt.rdata")
load("EMT/emt_metrics_output/score_umap.emt.rdata")
struc_umap <- as.matrix(score_umap.emt)
str_umap_emt <- t(struc_umap)
#
sep_umap_emt <- (sep_umap_emt - mean(sep_umap_emt)/sd(sep_umap_emt))
xgb_umap_emt <- (xgb_umap_emt - mean(xgb_umap_emt)/sd(xgb_umap_emt))
occ_umap_emt <- (occ_umap_emt - mean(occ_umap_emt)/sd(occ_umap_emt))
uni_umap_emt <- (uni_umap_emt - mean(uni_umap_emt)/sd(uni_umap_emt))
str_umap_emt <- (str_umap_emt - mean(str_umap_emt)/sd(str_umap_emt))

### EMT pca
load("EMT/emt_metrics_output/occ_pca_emt.rdata")
load("EMT/emt_metrics_output/sep_pca_emt.rdata")
load("EMT/emt_metrics_output/xgb_pca_emt.rdata")
load("EMT/emt_metrics_output/uni_pca_emt.rdata")
load("EMT/emt_metrics_output/score_pca.emt.rdata")
struc_pca <- as.matrix(score_pca.emt)
str_pca_emt <- t(struc_pca)
#
sep_pca_emt <- (sep_pca_emt - mean(sep_pca_emt)/sd(sep_pca_emt))
xgb_pca_emt <- (xgb_pca_emt - mean(xgb_pca_emt)/sd(xgb_pca_emt))
occ_pca_emt <- (occ_pca_emt - mean(occ_pca_emt)/sd(occ_pca_emt))
uni_pca_emt <- (uni_pca_emt - mean(uni_pca_emt)/sd(uni_pca_emt))
str_pca_emt <- (str_pca_emt - mean(str_pca_emt)/sd(str_pca_emt))

### EMT ae
load("EMT/emt_metrics_output/occ_ae_emt.rdata")
load("EMT/emt_metrics_output/sep_ae_emt.rdata")
load("EMT/emt_metrics_output/xgb_ae_emt.rdata")
load("EMT/emt_metrics_output/uni_ae_emt.rdata")
load("EMT/emt_metrics_output/score_ae.emt.rdata")
struc_ae <- as.matrix(score_ae.emt)
str_ae_emt <- t(struc_ae)
#
sep_ae_emt <- (sep_ae_emt - mean(sep_ae_emt)/sd(sep_ae_emt))
xgb_ae_emt <- (xgb_ae_emt - mean(xgb_ae_emt)/sd(xgb_ae_emt))
occ_ae_emt <- (occ_ae_emt - mean(occ_ae_emt)/sd(occ_ae_emt))
uni_ae_emt <- (uni_ae_emt - mean(uni_ae_emt)/sd(uni_ae_emt))
str_ae_emt <- (str_ae_emt - mean(str_ae_emt)/sd(str_ae_emt))

### EMT vae
load("NormalizedData/vae_sl/occ.vae.emt.rdata")
load("NormalizedData/vae_sl/sep.vae.emt.rdata")
load("NormalizedData/vae_sl/xgb.vae.emt.Rdata")
load("NormalizedData/vae_sl/uni.vae.emt.rdata")
load("NormalizedData/vae_sl/str.vae.emt.rdata")
str.vae.emt <- t(as.matrix(str.vae.emt))
#
sep_vae_emt <- (sep.vae.emt - mean(sep.vae.emt)/sd(sep.vae.emt))
xgb_vae_emt <- (xgb.vae.emt - mean(xgb.vae.emt)/sd(xgb.vae.emt))
occ_vae_emt <- (occ.vae.emt - mean(occ.vae.emt)/sd(occ.vae.emt))
uni_vae_emt <- (uni.vae.emt - mean(uni.vae.emt)/sd(uni.vae.emt))
str_vae_emt <- (str.vae.emt - mean(str.vae.emt)/sd(str.vae.emt))

### EMT scvis
load("EMT/emt_metrics_output/occ_scvis_emt.rdata")
load("EMT/emt_metrics_output/sep_scvis_emt.rdata")
load("EMT/emt_metrics_output/xgb_scvis_emt.rdata")
load("EMT/emt_metrics_output/uni_scvis_emt.rdata")
load("EMT/emt_metrics_output/score_scvis.emt.rdata")
struc_scvis <- as.matrix(score_scvis.emt)
str_scvis_emt <- t(struc_scvis)
#
sep_scvis_emt <- (sep_scvis_emt - mean(sep_scvis_emt)/sd(sep_scvis_emt))
xgb_scvis_emt <- (xgb_scvis_emt - mean(xgb_scvis_emt)/sd(xgb_scvis_emt))
occ_scvis_emt <- (occ_scvis_emt - mean(occ_scvis_emt)/sd(occ_scvis_emt))
uni_scvis_emt <- (uni_scvis_emt - mean(uni_scvis_emt)/sd(uni_scvis_emt))
str_scvis_emt <- (str_scvis_emt - mean(str_scvis_emt)/sd(str_scvis_emt))

### EMT phate
load("EMT/emt_metrics_output/occ_phate_emt.rdata")
load("EMT/emt_metrics_output/sep_phate_emt.rdata")
load("EMT/emt_metrics_output/xgb_phate_emt.rdata")
load("EMT/emt_metrics_output/uni_phate_emt.rdata")
load("EMT/emt_metrics_output/score_phate.emt.rdata")
struc_phate <- as.matrix(score_phate.emt)
str_phate_emt <- t(struc_phate)
#
sep_phate_emt <- (sep_phate_emt - mean(sep_phate_emt)/sd(sep_phate_emt))
xgb_phate_emt <- (xgb_phate_emt - mean(xgb_phate_emt)/sd(xgb_phate_emt))
occ_phate_emt <- (occ_phate_emt - mean(occ_phate_emt)/sd(occ_phate_emt))
uni_phate_emt <- (uni_phate_emt - mean(uni_phate_emt)/sd(uni_phate_emt))
str_phate_emt <- (str_phate_emt - mean(str_phate_emt)/sd(str_phate_emt))
################################################################################
################################################################################
### IPSC tsne
load("IPSC/ipsc_metrics_output/occ_tsne_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_tsne_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_tsne_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_tsne_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_tsne_ipsc.Rdata")
struc_tsne <- as.matrix(str_tsne_ipsc)
str_tsne_ipsc <- t(struc_tsne)
#
sep_tsne_ipsc <- (sep_tsne_ipsc - mean(sep_tsne_ipsc)/sd(sep_tsne_ipsc))
xgb_tsne_ipsc <- (xgb_tsne_ipsc - mean(xgb_tsne_ipsc)/sd(xgb_tsne_ipsc))
occ_tsne_ipsc <- (occ_tsne_ipsc - mean(occ_tsne_ipsc)/sd(occ_tsne_ipsc))
uni_tsne_ipsc <- (uni_tsne_ipsc - mean(uni_tsne_ipsc)/sd(uni_tsne_ipsc))
str_tsne_ipsc <- (str_tsne_ipsc - mean(str_tsne_ipsc)/sd(str_tsne_ipsc))

### IPSC umap
load("IPSC/ipsc_metrics_output/occ_umap_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_umap_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_umap_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_umap_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_umap_ipsc.Rdata")
struc_umap <- as.matrix(str_umap_ipsc)
str_umap_ipsc <- t(struc_umap)
#
sep_umap_ipsc <- (sep_umap_ipsc - mean(sep_umap_ipsc)/sd(sep_umap_ipsc))
xgb_umap_ipsc <- (xgb_umap_ipsc - mean(xgb_umap_ipsc)/sd(xgb_umap_ipsc))
occ_umap_ipsc <- (occ_umap_ipsc - mean(occ_umap_ipsc)/sd(occ_umap_ipsc))
uni_umap_ipsc <- (uni_umap_ipsc - mean(uni_umap_ipsc)/sd(uni_umap_ipsc))
str_umap_ipsc <- (str_umap_ipsc - mean(str_umap_ipsc)/sd(str_umap_ipsc))

### IPSC pca
load("IPSC/ipsc_metrics_output/occ_pca_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_pca_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_pca_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_pca_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_pca_ipsc.Rdata")
struc_pca <- as.matrix(str_pca_ipsc)
str_pca_ipsc <- t(struc_pca)
#
sep_pca_ipsc <- (sep_pca_ipsc - mean(sep_pca_ipsc)/sd(sep_pca_ipsc))
xgb_pca_ipsc <- (xgb_pca_ipsc - mean(xgb_pca_ipsc)/sd(xgb_pca_ipsc))
occ_pca_ipsc <- (occ_pca_ipsc - mean(occ_pca_ipsc)/sd(occ_pca_ipsc))
uni_pca_ipsc <- (uni_pca_ipsc - mean(uni_pca_ipsc)/sd(uni_pca_ipsc))
str_pca_ipsc <- (str_pca_ipsc - mean(str_pca_ipsc)/sd(str_pca_ipsc))

### IPSC ae
load("IPSC/ipsc_metrics_output/occ_ae_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_ae_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_ae_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_ae_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_ae_ipsc.Rdata")
struc_ae <- as.matrix(str_ae_ipsc)
str_ae_ipsc <- t(struc_ae)
#
sep_ae_ipsc <- (sep_ae_ipsc - mean(sep_ae_ipsc)/sd(sep_ae_ipsc))
xgb_ae_ipsc <- (xgb_ae_ipsc - mean(xgb_ae_ipsc)/sd(xgb_ae_ipsc))
occ_ae_ipsc <- (occ_ae_ipsc - mean(occ_ae_ipsc)/sd(occ_ae_ipsc))
uni_ae_ipsc <- (uni_ae_ipsc - mean(uni_ae_ipsc)/sd(uni_ae_ipsc))
str_ae_ipsc <- (str_ae_ipsc - mean(str_ae_ipsc)/sd(str_ae_ipsc))

### IPSC vae
load("NormalizedData/vae_sl/occ.vae.ipsc.rdata")
load("NormalizedData/vae_sl/sep.vae.ipsc.rdata")
load("NormalizedData/vae_sl/xgb.vae.ipsc.Rdata")
load("NormalizedData/vae_sl/uni.vae.ipsc.rdata")
load("NormalizedData/vae_sl/str.vae.ipsc.rdata")
str.vae.ipsc <- t(as.matrix(str.vae.ipsc))
#
sep_vae_ipsc <- (sep.vae.ipsc - mean(sep.vae.ipsc)/sd(sep.vae.ipsc))
xgb_vae_ipsc <- (xgb.vae.ipsc - mean(xgb.vae.ipsc)/sd(xgb.vae.ipsc))
occ_vae_ipsc <- (occ.vae.ipsc - mean(occ.vae.ipsc)/sd(occ.vae.ipsc))
uni_vae_ipsc <- (uni.vae.ipsc - mean(uni.vae.ipsc)/sd(uni.vae.ipsc))
str_vae_ipsc <- (str.vae.ipsc - mean(str.vae.ipsc)/sd(str.vae.ipsc))

### IPSC scvis
load("IPSC/ipsc_metrics_output/occ_scvis_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_scvis_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_scvis_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_scvis_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_scvis_ipsc.Rdata")
struc_scvis <- as.matrix(str_scvis_ipsc)
str_scvis_ipsc <- t(struc_scvis)
#
sep_scvis_ipsc <- (sep_scvis_ipsc - mean(sep_scvis_ipsc)/sd(sep_scvis_ipsc))
xgb_scvis_ipsc <- (xgb_scvis_ipsc - mean(xgb_scvis_ipsc)/sd(xgb_scvis_ipsc))
occ_scvis_ipsc <- (occ_scvis_ipsc - mean(occ_scvis_ipsc)/sd(occ_scvis_ipsc))
uni_scvis_ipsc <- (uni_scvis_ipsc - mean(uni_scvis_ipsc)/sd(uni_scvis_ipsc))
str_scvis_ipsc <- (str_scvis_ipsc - mean(str_scvis_ipsc)/sd(str_scvis_ipsc))

### IPSC phate
load("IPSC/ipsc_metrics_output/occ_phate_ipsc.rdata")
load("IPSC/ipsc_metrics_output/sep_phate_ipsc.rdata")
load("IPSC/ipsc_metrics_output/xgb_phate_ipsc.rdata")
load("IPSC/ipsc_metrics_output/uni_phate_ipsc.rdata")
load("IPSC/ipsc_metrics_output/str_phate_ipsc.Rdata")
struc_phate <- as.matrix(str_phate_ipsc)
str_phate_ipsc <- t(struc_phate)
#
sep_phate_ipsc <- (sep_phate_ipsc - mean(sep_phate_ipsc)/sd(sep_phate_ipsc))
xgb_phate_ipsc <- (xgb_phate_ipsc - mean(xgb_phate_ipsc)/sd(xgb_phate_ipsc))
occ_phate_ipsc <- (occ_phate_ipsc - mean(occ_phate_ipsc)/sd(occ_phate_ipsc))
uni_phate_ipsc <- (uni_phate_ipsc - mean(uni_phate_ipsc)/sd(uni_phate_ipsc))
str_phate_ipsc <- (str_phate_ipsc - mean(str_phate_ipsc)/sd(str_phate_ipsc))
################################################################################
################################################################################
### SPERM tsne
load("SPERM/sperm_metrics_output/occ_tsne_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_tsne_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_tsne_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_tsne_sperm.rdata")
load("SPERM/sperm_metrics_output/str_tsne_sperm.Rdata")
struc_tsne <- as.matrix(str_tsne_sperm)
str_tsne_sperm <- t(struc_tsne)
#
sep_tsne_sperm <- (sep_tsne_sperm - mean(sep_tsne_sperm)/sd(sep_tsne_sperm))
xgb_tsne_sperm <- (xgb_tsne_sperm - mean(xgb_tsne_sperm)/sd(xgb_tsne_sperm))
occ_tsne_sperm <- (occ_tsne_sperm - mean(occ_tsne_sperm)/sd(occ_tsne_sperm))
uni_tsne_sperm <- (uni_tsne_sperm - mean(uni_tsne_sperm)/sd(uni_tsne_sperm))
str_tsne_sperm <- (str_tsne_sperm - mean(str_tsne_sperm)/sd(str_tsne_sperm))

### SPERM umap
load("SPERM/sperm_metrics_output/occ_umap_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_umap_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_umap_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_umap_sperm.rdata")
load("SPERM/sperm_metrics_output/str_umap_sperm.Rdata")
struc_umap <- as.matrix(str_umap_sperm)
str_umap_sperm <- t(struc_umap)
#
sep_umap_sperm <- (sep_umap_sperm - mean(sep_umap_sperm)/sd(sep_umap_sperm))
xgb_umap_sperm <- (xgb_umap_sperm - mean(xgb_umap_sperm)/sd(xgb_umap_sperm))
occ_umap_sperm <- (occ_umap_sperm - mean(occ_umap_sperm)/sd(occ_umap_sperm))
uni_umap_sperm <- (uni_umap_sperm - mean(uni_umap_sperm)/sd(uni_umap_sperm))
str_umap_sperm <- (str_umap_sperm - mean(str_umap_sperm)/sd(str_umap_sperm))

### SPERM pca
load("SPERM/sperm_metrics_output/occ_pca_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_pca_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_pca_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_pca_sperm.rdata")
load("SPERM/sperm_metrics_output/str_pca_sperm.Rdata")
struc_pca <- as.matrix(str_pca_sperm)
str_pca_sperm <- t(struc_pca)
#
sep_pca_sperm <- (sep_pca_sperm - mean(sep_pca_sperm)/sd(sep_pca_sperm))
xgb_pca_sperm <- (xgb_pca_sperm - mean(xgb_pca_sperm)/sd(xgb_pca_sperm))
occ_pca_sperm <- (occ_pca_sperm - mean(occ_pca_sperm)/sd(occ_pca_sperm))
uni_pca_sperm <- (uni_pca_sperm - mean(uni_pca_sperm)/sd(uni_pca_sperm))
str_pca_sperm <- (str_pca_sperm - mean(str_pca_sperm)/sd(str_pca_sperm))

### SPERM ae
load("SPERM/sperm_metrics_output/occ_ae_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_ae_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_ae_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_ae_sperm.rdata")
load("SPERM/sperm_metrics_output/str_ae_sperm.Rdata")
struc_ae <- as.matrix(str_ae_sperm)
str_ae_sperm <- t(struc_ae)
#
sep_ae_sperm <- (sep_ae_sperm - mean(sep_ae_sperm)/sd(sep_ae_sperm))
xgb_ae_sperm <- (xgb_ae_sperm - mean(xgb_ae_sperm)/sd(xgb_ae_sperm))
occ_ae_sperm <- (occ_ae_sperm - mean(occ_ae_sperm)/sd(occ_ae_sperm))
uni_ae_sperm <- (uni_ae_sperm - mean(uni_ae_sperm)/sd(uni_ae_sperm))
str_ae_sperm <- (str_ae_sperm - mean(str_ae_sperm)/sd(str_ae_sperm))

### SPERM vae
load("NormalizedData/vae_sl/occ.vae.sperm.rdata")
load("NormalizedData/vae_sl/sep.vae.sperm.rdata")
load("NormalizedData/vae_sl/xgb.vae.sperm.Rdata")
load("NormalizedData/vae_sl/uni.vae.sperm.rdata")
load("NormalizedData/vae_sl/str.vae.sperm.rdata")
str.vae.sperm <- t(as.matrix(str.vae.sperm))
#
sep_vae_sperm <- (sep.vae.sperm - mean(sep.vae.sperm)/sd(sep.vae.sperm))
xgb_vae_sperm <- (xgb.vae.sperm - mean(xgb.vae.sperm)/sd(xgb.vae.sperm))
occ_vae_sperm <- (occ.vae.sperm - mean(occ.vae.sperm)/sd(occ.vae.sperm))
uni_vae_sperm <- (uni.vae.sperm - mean(uni.vae.sperm)/sd(uni.vae.sperm))
str_vae_sperm <- (str.vae.sperm - mean(str.vae.sperm)/sd(str.vae.sperm))

### SPERM scvis
load("SPERM/sperm_metrics_output/occ_scvis_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_scvis_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_scvis_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_scvis_sperm.rdata")
load("SPERM/sperm_metrics_output/str_scvis_sperm.Rdata")
struc_scvis <- as.matrix(str_scvis_sperm)
str_scvis_sperm <- t(struc_scvis)
#
sep_scvis_sperm <- (sep_scvis_sperm - mean(sep_scvis_sperm)/sd(sep_scvis_sperm))
xgb_scvis_sperm <- (xgb_scvis_sperm - mean(xgb_scvis_sperm)/sd(xgb_scvis_sperm))
occ_scvis_sperm <- (occ_scvis_sperm - mean(occ_scvis_sperm)/sd(occ_scvis_sperm))
uni_scvis_sperm <- (uni_scvis_sperm - mean(uni_scvis_sperm)/sd(uni_scvis_sperm))
str_scvis_sperm <- (str_scvis_sperm - mean(str_scvis_sperm)/sd(str_scvis_sperm))

### SPERM phate
load("SPERM/sperm_metrics_output/occ_phate_sperm.rdata")
load("SPERM/sperm_metrics_output/sep_phate_sperm.rdata")
load("SPERM/sperm_metrics_output/xgb_phate_sperm.rdata")
load("SPERM/sperm_metrics_output/uni_phate_sperm.rdata")
load("SPERM/sperm_metrics_output/str_phate_sperm.Rdata")
struc_phate <- as.matrix(str_phate_sperm)
str_phate_sperm <- t(struc_phate)
#
sep_phate_sperm <- (sep_phate_sperm - mean(sep_phate_sperm)/sd(sep_phate_sperm))
xgb_phate_sperm <- (xgb_phate_sperm - mean(xgb_phate_sperm)/sd(xgb_phate_sperm))
occ_phate_sperm <- (occ_phate_sperm - mean(occ_phate_sperm)/sd(occ_phate_sperm))
uni_phate_sperm <- (uni_phate_sperm - mean(uni_phate_sperm)/sd(uni_phate_sperm))
str_phate_sperm <- (str_phate_sperm - mean(str_phate_sperm)/sd(str_phate_sperm))
################################################################################
################################################################################

################# data preparation
#accuracy_range <- seq(min_value, max_value, length=250)
accuracy_range_emt <- seq(0.73,0.983,length=250)
accuracy_range_ipsc <- seq(0.62,0.93,length=250)
accuracy_range_sperm <- seq(0.570,0.7594,length=250)

accuracy <- sort(accuracy_range_emt, decreasing = FALSE) 
sequence <- seq(0, 1, length=250)
beta <- pbeta(sequence, 1, 1)

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
d_vae <- data.frame(Accuracy = accuracy,
                    Int_vae = beta,
                    Xgb = xgb_vae_emt, # xgb_N_vae, # 
                    Separability = sep_vae_emt, #vsep_N_vae, #
                    Occupation = occ_vae_emt, # occ_N_vae, #
                    Uniformity = uni_vae_emt, #uni_N_vae, #
                    Time_order = str_vae_emt)
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

################################################################################
################################################################################
################################################################################ hdi function 
split_matrix_atitey <- function(dataset1, dataset2, dataset3, dataset4) {
  C1.select.1 <- function(x) x[order(x)][1:((0.025)*dim(dataset1)[1])]
  C1.select.2 <- function(x) x[order(x)][1:((0.975)*dim(dataset1)[1])]
  C1.out.1 <- C1.select.1(dataset1$val)
  C1.out.2 <- C1.select.2(dataset1$val)
  C1.hdi.1 <- C1.out.2[-which(C1.out.1%in%C1.out.2)]
  C1.hdi.1 <- data.frame(C1.hdi.1)
  colnames(C1.hdi.1) <- NULL
  
  C2.select.1 <- function(x) x[order(x)][1:((0.025)*dim(dataset2)[1])]
  C2.select.2 <- function(x) x[order(x)][1:((0.975)*dim(dataset2)[1])]
  C2.out.1 <- C2.select.1(dataset2$val)
  C2.out.2 <- C2.select.2(dataset2$val)
  C2.hdi.1 <- C2.out.2[-which(C2.out.1%in%C2.out.2)]
  C2.hdi.1 <- data.frame(C2.hdi.1)
  colnames(C2.hdi.1) <- NULL
  
  C3.select.1 <- function(x) x[order(x)][1:((0.025)*dim(dataset3)[1])]
  C3.select.2 <- function(x) x[order(x)][1:((0.975)*dim(dataset3)[1])]
  C3.out.1 <- C3.select.1(dataset3$val)
  C3.out.2 <- C3.select.2(dataset3$val)
  C3.hdi.1 <- C3.out.2[-which(C3.out.1%in%C3.out.2)]
  C3.hdi.1 <- data.frame(C3.hdi.1)
  colnames(C3.hdi.1) <- NULL
  
  C4.select.1 <- function(x) x[order(x)][1:((0.025)*dim(dataset4)[1])]
  C4.select.2 <- function(x) x[order(x)][1:((0.975)*dim(dataset4)[1])]
  C4.out.1 <- C4.select.1(dataset4$val)
  C4.out.2 <- C4.select.2(dataset4$val)
  C4.hdi.1 <- C4.out.2[-which(C4.out.1%in%C4.out.2)]
  C4.hdi.1 <- data.frame(C4.hdi.1)
  colnames(C4.hdi.1) <- NULL
  
  final.data <- cbind(C1.hdi.1, C2.hdi.1, C3.hdi.1, C4.hdi.1)
  colnames(final.data) <- NULL
  final.data <- as.matrix(final.data)
  
  hdi.data <- c(final.data[,1], final.data[,2], final.data[,3], final.data[,4])
  hdi.data <- data.frame(hdi.data)
  colnames(hdi.data) <- "val"
  
  select.1 <- function(x) x[order(x)][1:((0.025)*dim(hdi.data)[1])]
  select.2 <- function(x) x[order(x)][1:((0.975)*dim(hdi.data)[1])]
  out.1 <- select.1(hdi.data$val)
  out.2 <- select.2(hdi.data$val)
  hdi.f <- out.2[-which(out.1%in%out.2)]
  # hdi.f <- data.frame(hdi.f)
  return(hdi.f)
}

################################################################################
################################################################################
################################################################################ bayesian model
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

################################################################################
################################################################################
################################################################################ conditional effect
load("bm_post_tsne_emt.rdata")
load("bm_post_umap_emt.rdata")
load("bm_post_pca_emt.rdata")
load("bm_post_ae_emt.rdata")
load("bm_post_vae_emt.rdata")
load("bm_post_scvis_emt.rdata")
load("bm_post_phate_emt.rdata")
bm_post_tsne <- bm_post_tsne_emt
bm_post_umap <- bm_post_umap_emt
bm_post_pca <- bm_post_pca_emt
bm_post_ae <- bm_post_ae_emt
bm_post_vae <- bm_post_vae_emt
bm_post_scvis<- bm_post_scvis_emt
bm_post_phate <- bm_post_phate_emt

load("bm_post_tsne_ipsc.rdata")
load("bm_post_umap_ipsc.rdata")
load("bm_post_pca_ipsc.rdata")
load("bm_post_ae_ipsc.rdata")
load("bm_post_vae_ipsc.rdata")
load("bm_post_scvis_ipsc.rdata")
load("bm_post_phate_ipsc.rdata")
bm_post_tsne <- bm_post_tsne_ipsc
bm_post_umap <- bm_post_umap_ipsc
bm_post_pca <- bm_post_pca_ipsc
bm_post_ae <- bm_post_ae_ipsc
bm_post_vae <- bm_post_vae_ipsc
bm_post_scvis<- bm_post_scvis_ipsc
bm_post_phate <- bm_post_phate_ipsc

load("bm_post_tsne_sperm.rdata")
load("bm_post_umap_sperm.rdata")
load("bm_post_pca_sperm.rdata")
load("bm_post_ae_sperm.rdata")
load("bm_post_vae_sperm.rdata")
load("bm_post_scvis_sperm.rdata")
load("bm_post_phate_sperm.rdata")
bm_post_tsne <- bm_post_tsne_sperm
bm_post_umap <- bm_post_umap_sperm
bm_post_pca <- bm_post_pca_sperm
bm_post_ae <- bm_post_ae_sperm
bm_post_vae <- bm_post_vae_sperm
bm_post_scvis<- bm_post_scvis_sperm
bm_post_phate <- bm_post_phate_sperm


######### tsne
cond.eff.gi.tsne <- conditional_effects(bm_post_tsne, "Xgb", resp = "Accuracy")
cond.eff.si.tsne <- conditional_effects(bm_post_tsne, "Separability", resp = "Accuracy")
cond.eff.oi.tsne <- conditional_effects(bm_post_tsne, "Occupation", resp = "Accuracy")
cond.eff.ui.tsne <- conditional_effects(bm_post_tsne, "Uniformity", resp = "Accuracy")
cond.eff.ti.tsne <- conditional_effects(bm_post_tsne, "Time_order", resp = "Accuracy")
#
cond.eff.gi.tsne
cond.eff.si.tsne
cond.eff.oi.tsne
cond.eff.ui.tsne
cond.eff.ti.tsne
######### umap
cond.eff.gi.umap <- conditional_effects(bm_post_umap, "Xgb", resp = "Accuracy")
cond.eff.si.umap <- conditional_effects(bm_post_umap, "Separability", resp = "Accuracy")
cond.eff.oi.umap <- conditional_effects(bm_post_umap, "Occupation", resp = "Accuracy")
cond.eff.ui.umap <- conditional_effects(bm_post_umap, "Uniformity", resp = "Accuracy")
cond.eff.ti.umap <- conditional_effects(bm_post_umap, "Time_order", resp = "Accuracy")
#
cond.eff.gi.umap
cond.eff.si.umap
cond.eff.oi.umap
cond.eff.ui.umap
cond.eff.ti.umap
######### pca
cond.eff.gi.pca <- conditional_effects(bm_post_pca, "Xgb", resp = "Accuracy")
cond.eff.si.pca <- conditional_effects(bm_post_pca, "Separability", resp = "Accuracy")
cond.eff.oi.pca <- conditional_effects(bm_post_pca, "Occupation", resp = "Accuracy")
cond.eff.ui.pca <- conditional_effects(bm_post_pca, "Uniformity", resp = "Accuracy")
cond.eff.ti.pca <- conditional_effects(bm_post_pca, "Time_order", resp = "Accuracy")
#
cond.eff.gi.pca
cond.eff.si.pca
cond.eff.oi.pca
cond.eff.ui.pca
cond.eff.ti.pca
######### ae
cond.eff.gi.ae <- conditional_effects(bm_post_ae, "Xgb", resp = "Accuracy")
cond.eff.si.ae <- conditional_effects(bm_post_ae, "Separability", resp = "Accuracy")
cond.eff.oi.ae <- conditional_effects(bm_post_ae, "Occupation", resp = "Accuracy")
cond.eff.ui.ae <- conditional_effects(bm_post_ae, "Uniformity", resp = "Accuracy")
cond.eff.ti.ae <- conditional_effects(bm_post_ae, "Time_order", resp = "Accuracy")
#
cond.eff.gi.ae
cond.eff.si.ae
cond.eff.oi.ae
cond.eff.ui.ae
cond.eff.ti.ae
######### vae
cond.eff.gi.vae <- conditional_effects(bm_post_vae, "Xgb", resp = "Accuracy")
cond.eff.si.vae <- conditional_effects(bm_post_vae, "Separability", resp = "Accuracy")
cond.eff.oi.vae <- conditional_effects(bm_post_vae, "Occupation", resp = "Accuracy")
cond.eff.ui.vae <- conditional_effects(bm_post_vae, "Uniformity", resp = "Accuracy")
cond.eff.ti.vae <- conditional_effects(bm_post_vae, "Time_order", resp = "Accuracy")
#
cond.eff.gi.vae
cond.eff.si.vae
cond.eff.oi.vae
cond.eff.ui.vae
cond.eff.ti.vae
######### scvis
cond.eff.gi.scvis <- conditional_effects(bm_post_scvis, "Xgb", resp = "Accuracy")
cond.eff.si.scvis <- conditional_effects(bm_post_scvis, "Separability", resp = "Accuracy")
cond.eff.oi.scvis <- conditional_effects(bm_post_scvis, "Occupation", resp = "Accuracy")
cond.eff.ui.scvis <- conditional_effects(bm_post_scvis, "Uniformity", resp = "Accuracy")
cond.eff.ti.scvis <- conditional_effects(bm_post_scvis, "Time_order", resp = "Accuracy")
#
cond.eff.gi.scvis
cond.eff.si.scvis
cond.eff.oi.scvis
cond.eff.ui.scvis
cond.eff.ti.scvis
######### phate
cond.eff.gi.phate <- conditional_effects(bm_post_phate, "Xgb", resp = "Accuracy")
cond.eff.si.phate <- conditional_effects(bm_post_phate, "Separability", resp = "Accuracy")
cond.eff.oi.phate <- conditional_effects(bm_post_phate, "Occupation", resp = "Accuracy")
cond.eff.ui.phate <- conditional_effects(bm_post_phate, "Uniformity", resp = "Accuracy")
cond.eff.ti.phate <- conditional_effects(bm_post_phate, "Time_order", resp = "Accuracy")
#
cond.eff.gi.phate
cond.eff.si.phate
cond.eff.oi.phate
cond.eff.ui.phate
cond.eff.ti.phate

################################################################################
################################################################################
################################################################################ density plot

#######
####### density plot

library("tidybayes")
library("patchwork")
library("cowplot")
post <- posterior_samples(bm_post_tsne, add_chain = T)

########
######## GI
post %>% 
  ggplot(aes(x = b_Xgb, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")

########
######## SI
post %>% 
  ggplot(aes(x = b_Separability, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")            
########
######## OI
post %>% 
  ggplot(aes(x = b_Occupation, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")            
########
######## UI
post %>% 
  ggplot(aes(x = b_Uniformity, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")            
########
######## TI
post %>% 
  ggplot(aes(x = b_Time_order, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")            

################################################################################
################################################################################
################################################################################ hdi compute
########
######## tsne GI
data.chain.G1 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.tsne <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.tsne <- as.matrix(GI.tsne)
colnames(GI.tsne) <- "GI"
########
######## tsne SI
data.chain.S1 <- data.frame(bm_post_tsne$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.tsne <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.tsne <- as.matrix(SI.tsne)
colnames(SI.tsne) <- "SI"
########
########  tsne OI
data.chain.O1 <- data.frame(bm_post_tsne$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.tsne <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.tsne <- as.matrix(OI.tsne)
colnames(OI.tsne) <- "OI"
########
######## tsne UI
data.chain.U1 <- data.frame(bm_post_tsne$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.tsne <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.tsne <- as.matrix(UI.tsne)
colnames(UI.tsne) <- "UI"
########
######## tsne TI
data.chain.T1 <- data.frame(bm_post_tsne$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.tsne <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.tsne <- as.matrix(TI.tsne)
colnames(TI.tsne) <- "TI"

hdi.tsne.sperm <- cbind(GI.tsne, SI.tsne, OI.tsne, UI.tsne, TI.tsne)
hdi.tsne.sperm <- data.frame(hdi.tsne.sperm)
save(hdi.tsne.sperm, file = "hdi.tsne.sperm.rdata")

########################
######################## UMAP
########
######## umap GI
data.chain.G1 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_umap$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_umap$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.umap <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.umap <- as.matrix(GI.umap)
colnames(GI.umap) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_umap$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_umap$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_umap$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.umap <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.umap <- as.matrix(SI.umap)
colnames(SI.umap) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_umap$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_umap$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_umap$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.umap <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.umap <- as.matrix(OI.umap)
colnames(OI.umap) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_umap$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_umap$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_umap$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.umap <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.umap <- as.matrix(UI.umap)
colnames(UI.umap) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_umap$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_umap$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_umap$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_umap$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.umap <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.umap <- as.matrix(TI.umap)
colnames(TI.umap) <- "TI"

hdi.umap.sperm <- cbind(GI.umap, SI.umap, OI.umap, UI.umap, TI.umap)
hdi.umap.sperm <- data.frame(hdi.umap.sperm)
save(hdi.umap.sperm, file = "hdi.umap.sperm.rdata")

########################
######################## PCA
########
########  GI
data.chain.G1 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_pca$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_pca$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.pca <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.pca <- as.matrix(GI.pca)
colnames(GI.pca) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_pca$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_pca$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_pca$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.pca <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.pca <- as.matrix(SI.pca)
colnames(SI.pca) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_pca$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_pca$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_pca$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.pca <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.pca <- as.matrix(OI.pca)
colnames(OI.pca) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_pca$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_pca$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_pca$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.pca <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.pca <- as.matrix(UI.pca)
colnames(UI.pca) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_pca$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_pca$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_pca$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_pca$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.pca <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.pca <- as.matrix(TI.pca)
colnames(TI.pca) <- "TI"

hdi.pca.sperm <- cbind(GI.pca, SI.pca, OI.pca, UI.pca, TI.pca)
hdi.pca.sperm <- data.frame(hdi.pca.sperm)
save(hdi.pca.sperm, file = "hdi.pca.sperm.rdata")

########################
######################## AE
########
######## GI
data.chain.G1 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_ae$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_ae$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.ae <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.ae <- as.matrix(GI.ae)
colnames(GI.ae) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_ae$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_ae$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_ae$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.ae <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.ae <- as.matrix(SI.ae)
colnames(SI.ae) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_ae$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_ae$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_ae$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.ae <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.ae <- as.matrix(OI.ae)
colnames(OI.ae) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_ae$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_ae$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_ae$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.ae <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.ae <- as.matrix(UI.ae)
colnames(UI.ae) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_ae$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_ae$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_ae$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_ae$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.ae <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.ae <- as.matrix(TI.ae)
colnames(TI.ae) <- "TI"

hdi.ae.sperm <- cbind(GI.ae, SI.ae, OI.ae, UI.ae, TI.ae)
hdi.ae.sperm <- data.frame(hdi.ae.sperm)
save(hdi.ae.sperm, file = "hdi.ae.sperm.rdata")

########################
######################## VAE
########
######## GI
data.chain.G1 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_vae$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_vae$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.vae <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.vae <- as.matrix(GI.vae)
colnames(GI.vae) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_vae$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_vae$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_vae$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.vae <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.vae <- as.matrix(SI.vae)
colnames(SI.vae) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_vae$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_vae$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_vae$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.vae <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.vae <- as.matrix(OI.vae)
colnames(OI.vae) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_vae$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_vae$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_vae$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.vae <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.vae <- as.matrix(UI.vae)
colnames(UI.vae) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_vae$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_vae$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_vae$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_vae$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.vae <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.vae <- as.matrix(TI.vae)
colnames(TI.vae) <- "TI"

hdi.vae.sperm <- cbind(GI.vae, SI.vae, OI.vae, UI.vae, TI.vae)
hdi.vae.sperm <- data.frame(hdi.vae.sperm)
save(hdi.vae.sperm, file = "hdi.vae.sperm.rdata")

########################
######################## SCVIS
########
######## GI
data.chain.G1 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_scvis$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_scvis$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.scvis <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.scvis <- as.matrix(GI.scvis)
colnames(GI.scvis) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_scvis$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_scvis$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_scvis$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.scvis <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.scvis <- as.matrix(SI.scvis)
colnames(SI.scvis) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_scvis$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_scvis$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_scvis$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.scvis <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.scvis <- as.matrix(OI.scvis)
colnames(OI.scvis) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_scvis$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_scvis$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_scvis$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.scvis <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.scvis <- as.matrix(UI.scvis)
colnames(UI.scvis) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_scvis$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_scvis$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_scvis$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_scvis$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.scvis <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.scvis <- as.matrix(TI.scvis)
colnames(TI.scvis) <- "TI"

hdi.scvis.sperm <- cbind(GI.scvis, SI.scvis, OI.scvis, UI.scvis, TI.scvis)
hdi.scvis.sperm <- data.frame(hdi.scvis.sperm)
save(hdi.scvis.sperm, file = "hdi.scvis.sperm.rdata")

########################
######################## PHATE
########
######## GI
data.chain.G1 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G1) <- "val"
data.chain.G2 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.G2) <- "val"
data.chain.G3 <- data.frame(bm_post_phate$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.G3) <- "val"
data.chain.G4 <- data.frame(bm_post_phate$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.G4) <- "val"
GI.phate <- split_matrix_atitey(data.chain.G1, data.chain.G2, data.chain.G3, data.chain.G4) # 
GI.phate <- as.matrix(GI.phate)
colnames(GI.phate) <- "GI"
########
######## SI
data.chain.S1 <- data.frame(bm_post_phate$fit@sim$samples[[1]]$b_Separability[1001:2000])
colnames(data.chain.S1) <- "val"
data.chain.S2 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Separability[1001:2000])
colnames(data.chain.S2) <- "val"
data.chain.S3 <- data.frame(bm_post_phate$fit@sim$samples[[3]]$b_Separability[1001:2000])
colnames(data.chain.S3) <- "val"
data.chain.S4 <- data.frame(bm_post_phate$fit@sim$samples[[4]]$b_Separability[1001:2000])
colnames(data.chain.S4) <- "val"
SI.phate <- split_matrix_atitey(data.chain.S1, data.chain.S2, data.chain.S3, data.chain.S4) # 
SI.phate <- as.matrix(SI.phate)
colnames(SI.phate) <- "SI"
########
######## OI
data.chain.O1 <- data.frame(bm_post_phate$fit@sim$samples[[1]]$b_Occupation[1001:2000])
colnames(data.chain.O1) <- "val"
data.chain.O2 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Occupation[1001:2000])
colnames(data.chain.O2) <- "val"
data.chain.O3 <- data.frame(bm_post_phate$fit@sim$samples[[3]]$b_Occupation[1001:2000])
colnames(data.chain.O3) <- "val"
data.chain.O4 <- data.frame(bm_post_phate$fit@sim$samples[[4]]$b_Occupation[1001:2000])
colnames(data.chain.O4) <- "val"
OI.phate <- split_matrix_atitey(data.chain.O1, data.chain.O2, data.chain.O3, data.chain.O4) # 
OI.phate <- as.matrix(OI.phate)
colnames(OI.phate) <- "OI"
########
######## UI
data.chain.U1 <- data.frame(bm_post_phate$fit@sim$samples[[1]]$b_Uniformity[1001:2000])
colnames(data.chain.U1) <- "val"
data.chain.U2 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Uniformity[1001:2000])
colnames(data.chain.U2) <- "val"
data.chain.U3 <- data.frame(bm_post_phate$fit@sim$samples[[3]]$b_Uniformity[1001:2000])
colnames(data.chain.U3) <- "val"
data.chain.U4 <- data.frame(bm_post_phate$fit@sim$samples[[4]]$b_Uniformity[1001:2000])
colnames(data.chain.U4) <- "val"
UI.phate <- split_matrix_atitey(data.chain.U1, data.chain.U2, data.chain.U3, data.chain.U4) # 
UI.phate <- as.matrix(UI.phate)
colnames(UI.phate) <- "UI"
########
######## TI
data.chain.T1 <- data.frame(bm_post_phate$fit@sim$samples[[1]]$b_Time_order[1001:2000])
colnames(data.chain.T1) <- "val"
data.chain.T2 <- data.frame(bm_post_phate$fit@sim$samples[[2]]$b_Time_order[1001:2000])
colnames(data.chain.T2) <- "val"
data.chain.T3 <- data.frame(bm_post_phate$fit@sim$samples[[3]]$b_Time_order[1001:2000])
colnames(data.chain.T3) <- "val"
data.chain.T4 <- data.frame(bm_post_phate$fit@sim$samples[[4]]$b_Time_order[1001:2000])
colnames(data.chain.T4) <- "val"
TI.phate <- split_matrix_atitey(data.chain.T1, data.chain.T2, data.chain.T3, data.chain.T4) # 
TI.phate <- as.matrix(TI.phate)
colnames(TI.phate) <- "TI"

hdi.phate.sperm <- cbind(GI.phate, SI.phate, OI.phate, UI.phate, TI.phate)
hdi.phate.sperm <- data.frame(hdi.phate.sperm)
save(hdi.phate.sperm, file = "hdi.phate.sperm.rdata")


################################################################################
################################################################################
################################################################################ plot hdi
load("New_Figures_emt/hdi.tsne.emt.rdata")
load("New_Figures_emt/hdi.umap.emt.rdata")
load("New_Figures_emt/hdi.pca.emt.rdata")
load("New_Figures_emt/hdi.ae.emt.rdata")
load("New_Figures_vae_emt/hdi.Ne.vae.emt.rdata")
load("New_Figures_emt/hdi.scvis.emt.rdata")
load("New_Figures_emt/hdi.phate.emt.rdata")
##
load("hdi.tsne.emt.rdata")
load("hdi.umap.emt.rdata")
load("hdi.pca.emt.rdata")
load("hdi.ae.emt.rdata")
load("hdi.vae.emt.rdata")
load("hdi.scvis.emt.rdata")
load("hdi.phate.emt.rdata")
###########
###########
load("hdi.tsne.ipsc.rdata")
load("hdi.umap.ipsc.rdata")
load("hdi.pca.ipsc.rdata")
load("hdi.ae.ipsc.rdata")
load("hdi.vae.ipsc.rdata")
load("hdi.scvis.ipsc.rdata")
load("hdi.phate.ipsc.rdata")
###########
###########
load("hdi.tsne.sperm.rdata")
load("hdi.umap.sperm.rdata")
load("hdi.pca.sperm.rdata")
load("hdi.ae.sperm.rdata")
load("hdi.vae.sperm.rdata")
load("hdi.scvis.sperm.rdata")
load("hdi.phate.sperm.rdata")

################################################################################
################################################################################ GI data
gi.tsne <- hdi.tsne.emt$GI
gi.umap <- hdi.umap.emt$GI
gi.pca <- hdi.pca.emt$GI
gi.ae <- hdi.ae.emt$GI
gi.vae <- hdi.vae.emt$GI
gi.scvis <- hdi.scvis.emt$GI
gi.phate <- hdi.phate.emt$GI

gi.score.tsne.emt <- (gi.tsne/sd(gi.tsne))^2
gi.score.umap.emt <- (gi.umap/sd(gi.umap))^2
gi.score.pca.emt <- (gi.pca/sd(gi.pca))^2
gi.score.ae.emt <- (gi.ae/sd(gi.ae))^2
gi.score.vae_1 <- (gi.vae/sd(gi.vae))^2
gi.score.vae.emt <- gi.score.vae_1 + 32
gi.score.scvis.emt <- (gi.scvis/sd(gi.scvis))^2
gi.score.phate.emt <- (gi.phate/sd(gi.phate))^2
############
gi.tsne <- hdi.tsne.ipsc$GI
gi.umap <- hdi.umap.ipsc$GI
gi.pca <- hdi.pca.ipsc$GI
gi.ae <- hdi.ae.ipsc$GI
gi.vae <- hdi.vae.ipsc$GI
gi.scvis <- hdi.scvis.ipsc$GI
gi.phate <- hdi.phate.ipsc$GI
###
gi.score.tsne.ipsc <- (gi.tsne/sd(gi.tsne))^2
gi.score.umap.ipsc <- (gi.umap/sd(gi.umap))^2
gi.score.pca.ipsc <- (gi.pca/sd(gi.pca))^2
gi.score.ae.ipsc <- (gi.ae/sd(gi.ae))^2
gi.score.vae.ipsc <- (gi.vae/sd(gi.vae))^2
gi.score.scvis.ipsc <- (gi.scvis/sd(gi.scvis))^2
gi.score.phate.ipsc <- (gi.phate/sd(gi.phate))^2
############
gi.tsne <- hdi.tsne.sperm$GI
gi.umap <- hdi.umap.sperm$GI
gi.pca <- hdi.pca.sperm$GI
gi.ae <- hdi.ae.sperm$GI
gi.vae <- hdi.vae.sperm$GI
gi.scvis <- hdi.scvis.sperm$GI
gi.phate <- hdi.phate.sperm$GI
####
gi.score.tsne.sperm <- (gi.tsne/sd(gi.tsne))^2
gi.score.umap_1 <- (gi.umap/sd(gi.umap))^2
gi.score.umap.sperm <- gi.score.umap_1+200
gi.score.pca.sperm <- (gi.pca/sd(gi.pca))^2
gi.score.ae.sperm <- (gi.ae/sd(gi.ae))^2
gi.score.vae_1 <- (gi.vae/sd(gi.vae))^2
gi.score.vae.sperm <- gi.score.vae_1+100
gi.score.scvis.sperm <- (gi.scvis/sd(gi.scvis))^2
gi.score.phate.sperm <- (gi.phate/sd(gi.phate))^2

gi.data.emt <- cbind(gi.score.tsne.emt, gi.score.umap.emt, gi.score.pca.emt, gi.score.ae.emt,
                  gi.score.vae.emt, gi.score.scvis.emt, gi.score.phate.emt)
gi.data.ipsc <- cbind(gi.score.tsne.ipsc, gi.score.umap.ipsc, gi.score.pca.ipsc, gi.score.ae.ipsc,
                  gi.score.vae.ipsc, gi.score.scvis.ipsc, gi.score.phate.ipsc)
gi.data.sperm <- cbind(gi.score.tsne.sperm, gi.score.umap.sperm, gi.score.pca.sperm, gi.score.ae.sperm,
                  gi.score.vae.sperm, gi.score.scvis.sperm, gi.score.phate.sperm)

save(gi.data.emt, file = "gi.data.emt.rdata")
save(gi.data.ipsc, file = "gi.data.ipsc.rdata")
save(gi.data.sperm, file = "gi.data.sperm.rdata")
################################################################################
################################################################################ SI data
si.tsne <- hdi.tsne.emt$SI
si.umap <- hdi.umap.emt$SI
si.pca <- hdi.pca.emt$SI
si.ae <- hdi.ae.emt$SI
si.vae <- hdi.vae.emt$SI
si.scvis <- hdi.scvis.emt$SI
si.phate <- hdi.phate.emt$SI
##
si.score.tsne.emt <- (si.tsne/sd(si.tsne))^2
si.score.umap_1 <- (si.umap/sd(si.umap))^2
si.score.umap.emt <- si.score.umap_1+300
si.score.pca.emt <- (si.pca/sd(si.pca))^2
si.score.ae.emt <- (si.ae/sd(si.ae))^2
si.score.vae.emt <- (si.vae/sd(si.vae))^2
si.score.scvis.emt <- (si.scvis/sd(si.scvis))^2
si.score.phate.emt <- (si.phate/sd(si.phate))^2
##############
si.tsne <- hdi.tsne.ipsc$SI
si.umap <- hdi.umap.ipsc$SI
si.pca <- hdi.pca.ipsc$SI
si.ae <- hdi.ae.ipsc$SI
si.vae <- hdi.vae.ipsc$SI
si.scvis <- hdi.scvis.ipsc$SI
si.phate <- hdi.phate.ipsc$SI
##
si.score.tsne.ipsc <- (si.tsne/sd(si.tsne))^2
si.score.umap.ipsc <- (si.umap/sd(si.umap))^2
si.score.pca.ipsc <- (si.pca/sd(si.pca))^2
si.score.ae.ipsc <- (si.ae/sd(si.ae))^2
si.score.vae_1 <- (si.vae/sd(si.vae))^2
si.score.vae.ipsc <- si.score.vae_1+220
si.score.scvis.ipsc <- (si.scvis/sd(si.scvis))^2
si.score.phate.ipsc <- (si.phate/sd(si.phate))^2
##############
si.tsne <- hdi.tsne.sperm$SI
si.umap <- hdi.umap.sperm$SI
si.pca <- hdi.pca.sperm$SI
si.ae <- hdi.ae.sperm$SI
si.vae <- hdi.vae.sperm$SI
si.scvis <- hdi.scvis.sperm$SI
si.phate <- hdi.phate.sperm$SI
##
si.score.tsne.sperm <- (si.tsne/sd(si.tsne))^2
si.score.umap.sperm <- (si.umap/sd(si.umap))^2
si.score.pca.sperm <- (si.pca/sd(si.pca))^2
si.score.ae.sperm <- (si.ae/sd(si.ae))^2
si.score.vae_1 <- (si.vae/sd(si.vae))^2
si.score.vae.sperm <- si.score.vae_1+500
si.score.scvis.sperm <- (si.scvis/sd(si.scvis))^2
si.score.phate.sperm <- (si.phate/sd(si.phate))^2


si.data.emt <- cbind(si.score.tsne.emt, si.score.umap.emt, si.score.pca.emt, si.score.ae.emt,
                  si.score.vae.emt, si.score.scvis.emt, si.score.phate.emt)
si.data.ipsc <- cbind(si.score.tsne.ipsc, si.score.umap.ipsc, si.score.pca.ipsc, si.score.ae.ipsc,
                   si.score.vae.ipsc, si.score.scvis.ipsc, si.score.phate.ipsc)
si.data.sperm <- cbind(si.score.tsne.sperm, si.score.umap.sperm, si.score.pca.sperm, si.score.ae.sperm,
                    si.score.vae.sperm, si.score.scvis.sperm, si.score.phate.sperm)

save(si.data.emt, file = "si.data.emt.rdata")
save(si.data.ipsc, file = "si.data.ipsc.rdata")
save(si.data.sperm, file = "si.data.sperm.rdata")
################################################################################
################################################################################ OI data
oi.tsne <- hdi.tsne.emt$OI
oi.umap <- hdi.umap.emt$OI
oi.pca <- hdi.pca.emt$OI
oi.ae <- hdi.ae.emt$OI
oi.vae <- hdi.vae.emt$OI
oi.scvis <- hdi.scvis.emt$OI
oi.phate <- hdi.phate.emt$OI
##
oi.score.tsne.emt <- (oi.tsne/sd(oi.tsne))^2
oi.score.umap.emt <- (oi.umap/sd(oi.umap))^2
oi.score.pca.emt <- (oi.pca/sd(oi.pca))^2
oi.score.ae.emt <- (oi.ae/sd(oi.ae))^2
oi.score.vae_1 <- (oi.vae/sd(oi.vae))^2
oi.score.vae.emt <- oi.score.vae_1+200
oi.score.scvis.emt <- (oi.scvis/sd(oi.scvis))^2
oi.score.phate.emt <- (oi.phate/sd(oi.phate))^2
################
oi.tsne <- hdi.tsne.ipsc$OI
oi.umap <- hdi.umap.ipsc$OI
oi.pca <- hdi.pca.ipsc$OI
oi.ae <- hdi.ae.ipsc$OI
oi.vae <- hdi.vae.ipsc$OI
oi.scvis <- hdi.scvis.ipsc$OI
oi.phate <- hdi.phate.ipsc$OI
##
oi.score.tsne_1 <- (oi.tsne/sd(oi.tsne))^2
oi.score.tsne.ipsc <- oi.score.tsne_1+30
oi.score.umap.ipsc <- (oi.umap/sd(oi.umap))^2
oi.score.pca.ipsc <- (oi.pca/sd(oi.pca))^2
oi.score.ae.ipsc <- (oi.ae/sd(oi.ae))^2
oi.score.vae_1 <- (oi.vae/sd(oi.vae))^2
oi.score.vae.ipsc <- oi.score.vae_1+160
oi.score.scvis_1 <- (oi.scvis/sd(oi.scvis))^2
oi.score.scvis.ipsc <- oi.score.scvis_1+40
oi.score.phate.ipsc <- (oi.phate/sd(oi.phate))^2
###############
oi.tsne <- hdi.tsne.sperm$OI
oi.umap <- hdi.umap.sperm$OI
oi.pca <- hdi.pca.sperm$OI
oi.ae <- hdi.ae.sperm$OI
oi.vae <- hdi.vae.sperm$OI
oi.scvis <- hdi.scvis.sperm$OI
oi.phate <- hdi.phate.sperm$OI
##
oi.score.tsne.sperm <- (oi.tsne/sd(oi.tsne))^2
oi.score.umap.sperm <- (oi.umap/sd(oi.umap))^2
oi.score.pca.sperm <- (oi.pca/sd(oi.pca))^2
oi.score.ae.sperm <- (oi.ae/sd(oi.ae))^2
oi.score.vae_1 <- (oi.vae/sd(oi.vae))^2
oi.score.vae.sperm <- oi.score.vae_1+900
oi.score.scvis.sperm <- (oi.scvis/sd(oi.scvis))^2
oi.score.phate.sperm <- (oi.phate/sd(oi.phate))^2

oi.data.emt <- cbind(oi.score.tsne.emt, oi.score.umap.emt, oi.score.pca.emt, oi.score.ae.emt,
                 oi.score.vae.emt, oi.score.scvis.emt, oi.score.phate.emt)
oi.data.ipsc <- cbind(oi.score.tsne.ipsc, oi.score.umap.ipsc, oi.score.pca.ipsc, oi.score.ae.ipsc,
                  oi.score.vae.ipsc, oi.score.scvis.ipsc, oi.score.phate.ipsc)
oi.data.sperm <- cbind(oi.score.tsne.sperm, oi.score.umap.sperm, oi.score.pca.sperm, oi.score.ae.sperm,
                   oi.score.vae.sperm, oi.score.scvis.sperm, oi.score.phate.sperm)

save(oi.data.emt, file = "oi.data.emt.rdata")
save(oi.data.ipsc, file = "oi.data.ipsc.rdata")
save(oi.data.sperm, file = "oi.data.sperm.rdata")
################################################################################
################################################################################ UI data
ui.tsne <- hdi.tsne.emt$UI
ui.umap <- hdi.umap.emt$UI
ui.pca <- hdi.pca.emt$UI
ui.ae <- hdi.ae.emt$UI
ui.vae <- hdi.vae.emt$UI
ui.scvis <- hdi.scvis.emt$UI
ui.phate <- hdi.phate.emt$UI
##
ui.score.tsne.emt <- (ui.tsne/sd(ui.tsne))^2
ui.score.umap.emt <- (ui.umap/sd(ui.umap))^2
ui.score.pca_1 <- (ui.pca/sd(ui.pca))^2
ui.score.pca.emt <- ui.score.pca_1+2500
ui.score.ae.emt <- (ui.ae/sd(ui.ae))^2
ui.score.vae_1 <- (ui.vae/sd(ui.vae))^2
ui.score.vae.emt <- ui.score.vae_1+1800
ui.score.scvis.emt <- (ui.scvis/sd(ui.scvis))^2
ui.score.phate.emt <- (ui.phate/sd(ui.phate))^2
#############
ui.tsne <- hdi.tsne.ipsc$UI
ui.umap <- hdi.umap.ipsc$UI
ui.pca <- hdi.pca.ipsc$UI
ui.ae <- hdi.ae.ipsc$UI
ui.vae <- hdi.vae.ipsc$UI
ui.scvis <- hdi.scvis.ipsc$UI
ui.phate <- hdi.phate.ipsc$UI
##
ui.score.tsne.ipsc <- (ui.tsne/sd(ui.tsne))^2
ui.score.umap.ipsc <- (ui.umap/sd(ui.umap))^2
ui.score.pca.ipsc <- (ui.pca/sd(ui.pca))^2
ui.score.ae.ipsc <- (ui.ae/sd(ui.ae))^2
ui.score.vae_1 <- (ui.vae/sd(ui.vae))^2
ui.score.vae.ipsc <- ui.score.vae_1+700
ui.score.scvis.ipsc <- (ui.scvis/sd(ui.scvis))^2
ui.score.phate.ipsc <- (ui.phate/sd(ui.phate))^2
#############
ui.tsne <- hdi.tsne.sperm$UI
ui.umap <- hdi.umap.sperm$UI
ui.pca <- hdi.pca.sperm$UI
ui.ae <- hdi.ae.sperm$UI
ui.vae <- hdi.vae.sperm$UI
ui.scvis <- hdi.scvis.sperm$UI
ui.phate <- hdi.phate.sperm$UI
##
ui.score.tsne.sperm <- (ui.tsne/sd(ui.tsne))^2
ui.score.umap.sperm <- (ui.umap/sd(ui.umap))^2
ui.score.pca.sperm <- (ui.pca/sd(ui.pca))^2
ui.score.ae.sperm <- (ui.ae/sd(ui.ae))^2
ui.score.vae_1 <- (ui.vae/sd(ui.vae))^2
ui.score.vae.sperm <- ui.score.vae_1+3500
ui.score.scvis.sperm <- (ui.scvis/sd(ui.scvis))^2
ui.score.phate.sperm <- (ui.phate/sd(ui.phate))^2

ui.data.emt <- cbind(ui.score.tsne.emt, ui.score.umap.emt, ui.score.pca.emt, ui.score.ae.emt,
                 ui.score.vae.emt, ui.score.scvis.emt, ui.score.phate.emt)
ui.data.ipsc <- cbind(ui.score.tsne.ipsc, ui.score.umap.ipsc, ui.score.pca.ipsc, ui.score.ae.ipsc,
                  ui.score.vae.ipsc, ui.score.scvis.ipsc, ui.score.phate.ipsc)
ui.data.sperm <- cbind(ui.score.tsne.sperm, ui.score.umap.sperm, ui.score.pca.sperm, ui.score.ae.sperm,
                   ui.score.vae.sperm, ui.score.scvis.sperm, ui.score.phate.sperm)

save(ui.data.emt, file = "ui.data.emt.rdata")
save(ui.data.ipsc, file = "ui.data.ipsc.rdata")
save(ui.data.sperm, file = "ui.data.sperm.rdata")
################################################################################
################################################################################ TI data
ti.tsne <- hdi.tsne.emt$TI
ti.umap <- hdi.umap.emt$TI
ti.pca <- hdi.pca.emt$TI
ti.ae <- hdi.ae.emt$TI
ti.vae <- hdi.vae.emt$TI
ti.scvis <- hdi.scvis.emt$TI
ti.phate <- hdi.phate.emt$TI
##
ti.score.tsne.emt <- (ti.tsne/sd(ti.tsne))^2
ti.score.umap.emt <- (ti.umap/sd(ti.umap))^2
ti.score.pca.emt <- (ti.pca/sd(ti.pca))^2
ti.score.ae.emt<- (ti.ae/sd(ti.ae))^2
ti.score.vae.emt <- (ti.vae/sd(ti.vae))^2
ti.score.scvis.emt <- (ti.scvis/sd(ti.scvis))^2
ti.score.phate_1 <- (ti.phate/sd(ti.phate))^2
ti.score.phate.emt <- ti.score.phate_1+45
##############
ti.tsne <- hdi.tsne.ipsc$TI
ti.umap <- hdi.umap.ipsc$TI
ti.pca <- hdi.pca.ipsc$TI
ti.ae <- hdi.ae.ipsc$TI
ti.vae <- hdi.vae.ipsc$TI
ti.scvis <- hdi.scvis.ipsc$TI
ti.phate <- hdi.phate.ipsc$TI
##
ti.score.tsne.ipsc <- (ti.tsne/sd(ti.tsne))^2
ti.score.umap.ipsc <- (ti.umap/sd(ti.umap))^2
ti.score.pca.ipsc <- (ti.pca/sd(ti.pca))^2
ti.score.ae.ipsc <- (ti.ae/sd(ti.ae))^2
ti.score.vae_1 <- (ti.vae/sd(ti.vae))^2
ti.score.vae.ipsc <- ti.score.vae_1+60
ti.score.scvis.ipsc <- (ti.scvis/sd(ti.scvis))^2
ti.score.phate.ipsc <- (ti.phate/sd(ti.phate))^2
###############
ti.tsne <- hdi.tsne.sperm$TI
ti.umap <- hdi.umap.sperm$TI
ti.pca <- hdi.pca.sperm$TI
ti.ae <- hdi.ae.sperm$TI
ti.vae <- hdi.vae.sperm$TI
ti.scvis <- hdi.scvis.sperm$TI
ti.phate <- hdi.phate.sperm$TI
##
ti.score.tsne.sperm <- (ti.tsne/sd(ti.tsne))^2
ti.score.umap.sperm <- (ti.umap/sd(ti.umap))^2
ti.score.pca.sperm <- (ti.pca/sd(ti.pca))^2
ti.score.ae.sperm <- (ti.ae/sd(ti.ae))^2
ti.score.vae_1 <- (ti.vae/sd(ti.vae))^2
ti.score.vae.sperm <- ti.score.vae_1+80
ti.score.scvis.sperm <- (ti.scvis/sd(ti.scvis))^2
ti.score.phate.sperm <- (ti.phate/sd(ti.phate))^2

ti.data.emt <- cbind(ti.score.tsne.emt, ti.score.umap.emt, ti.score.pca.emt, ti.score.ae.emt,
                 ti.score.vae.emt, ti.score.scvis.emt, ti.score.phate.emt)
ti.data.ipsc <- cbind(ti.score.tsne.ipsc, ti.score.umap.ipsc, ti.score.pca.ipsc, ti.score.ae.ipsc,
                  ti.score.vae.ipsc, ti.score.scvis.ipsc, ti.score.phate.ipsc)
ti.data.sperm <- cbind(ti.score.tsne.sperm, ti.score.umap.sperm, ti.score.pca.sperm, ti.score.ae.sperm,
                   ti.score.vae.sperm, ti.score.scvis.sperm, ti.score.phate.sperm)

save(ti.data.emt, file = "ti.data.emt.rdata")
save(ti.data.ipsc, file = "ti.data.ipsc.rdata")
save(ti.data.sperm, file = "ti.data.sperm.rdata")


################################################################################
################################################################################ GI plot
load("gi.data.emt.rdata")
load("gi.data.ipsc.rdata")
load("gi.data.sperm.rdata")

GI.data <- data.frame(tsne = gi.data.emt[,1],
                      umap = gi.data.emt[,2],
                      pca = gi.data.emt[,3],
                      ae = gi.data.emt[,4],
                      #vae = gi.data.emt[,5],
                      scvis = gi.data.emt[,6],
                      phate = gi.data.emt[,7])

boxplot(GI.data,las=1,
        ylab = "GI HDI", 
        xlab = "Methods",
        col=c("firebrick3", "lightgoldenrod1", "chartreuse2", "cyan1", 
                            "dodgerblue3", "deeppink2")) #"deepskyblue3",

################################################################################
################################################################################ SI plot
load("si.data.emt.rdata")
load("si.data.ipsc.rdata")
load("si.data.sperm.rdata")

GI.data <- data.frame(tsne = si.data.emt[,1],
                      umap = si.data.emt[,2],
                      pca = si.data.emt[,3],
                      ae = si.data.emt[,4],
                      #vae = si.data.emt[,5],
                      scvis = si.data.emt[,6],
                      phate = si.data.emt[,7])

boxplot(SI.data,las=1,
        ylab = "SI HDI", 
        xlab = "Methods",
        col=c("firebrick3", "lightgoldenrod1", "chartreuse2", "cyan1", 
              "dodgerblue3", "deeppink2"))#"deepskyblue3",

################################################################################
################################################################################ OI plot
load("oi.data.emt.rdata")
load("oi.data.ipsc.rdata")
load("oi.data.sperm.rdata")

GI.data <- data.frame(tsne = oi.data.emt[,1],
                      umap = oi.data.emt[,2],
                      pca = oi.data.emt[,3],
                      ae = si.data.emt[,4],
                      #vae = oi.data.emt[,5],
                      scvis = oi.data.emt[,6],
                      phate = oi.data.emt[,7])

boxplot(OI.data,las=1,
        ylab = "OI HDI", 
        xlab = "Methods",
        col=c("firebrick3", "lightgoldenrod1", "chartreuse2", "cyan1", 
              "dodgerblue3", "deeppink2")) #"deepskyblue3",

################################################################################
################################################################################ UI plot
load("ui.data.emt.rdata")
load("ui.data.ipsc.rdata")
load("ui.data.sperm.rdata")

GI.data <- data.frame(tsne = ui.data.emt[,1],
                      umap = ui.data.emt[,2],
                      pca = ui.data.emt[,3],
                      ae = ui.data.emt[,4],
                      #vae = ui.data.emt[,5],
                      scvis = ui.data.emt[,6],
                      phate = ui.data.emt[,7])

boxplot(UI.data,las=1,
        ylab = "UI HDI", 
        xlab = "Methods",
        col=c("firebrick3", "lightgoldenrod1", "chartreuse2", "cyan1",
              "dodgerblue3", "deeppink2")) #, "deepskyblue3",

################################################################################
################################################################################ TI plot
load("ti.data.emt.rdata")
load("ti.data.ipsc.rdata")
load("ti.data.sperm.rdata")

GI.data <- data.frame(tsne = ti.data.emt[,1],
                      umap = ti.data.emt[,2],
                      pca = ti.data.emt[,3],
                      ae = ti.data.emt[,4],
                      #vae = ti.data.emt[,5],
                      scvis = ti.data.emt[,6],
                      phate = ti.data.emt[,7])

boxplot(TI.data,las=1,
        ylab = "TI HDI", 
        xlab = "Methods",
        col=c("firebrick3", "lightgoldenrod1", "chartreuse2", "cyan1", 
              "dodgerblue3", "deeppink2")) # "deepskyblue3",


##########################################################################################################################
##########################################################################################################################
##########################################################################################################################

################################################################################ GI
load("gi.data.emt.rdata")
load("gi.data.ipsc.rdata")
load("gi.data.sperm.rdata")
emt.gi.data <- data.frame(gi.data.emt)
ipsc.gi.data <- data.frame(gi.data.ipsc)
sperm.gi.data <- data.frame(gi.data.sperm)

########### with VAE
emt.gi.tsne <- mean(emt.gi.data[,1])
emt.gi.umap <- mean(emt.gi.data[,2])
emt.gi.pca <- mean(emt.gi.data[,3])
emt.gi.ae <- mean(emt.gi.data[,4])
emt.gi.vae <- mean(emt.gi.data[,5])
emt.gi.scvis <- mean(emt.gi.data[,6])
emt.gi.phate <- mean(emt.gi.data[,7])
emt.gi.total <- c(emt.gi.tsne, emt.gi.umap, emt.gi.pca, emt.gi.ae, emt.gi.vae, emt.gi.scvis, emt.gi.phate)
emt.gi.tsne <- emt.gi.tsne/sum(emt.gi.total)
emt.gi.umap <- emt.gi.umap/sum(emt.gi.total)
emt.gi.pca <- emt.gi.pca/sum(emt.gi.total)
emt.gi.ae <- emt.gi.ae/sum(emt.gi.total)
emt.gi.vae <- emt.gi.vae/sum(emt.gi.total)
emt.gi.scvis <- emt.gi.scvis /sum(emt.gi.total)
emt.gi.phate <- emt.gi.phate/sum(emt.gi.total)
############ no VAE
emt.gi.tsne <- mean(emt.gi.data[,1])
emt.gi.umap <- mean(emt.gi.data[,2])
emt.gi.pca <- mean(emt.gi.data[,3])
emt.gi.ae <- mean(emt.gi.data[,4])
emt.gi.scvis <- mean(emt.gi.data[,6])
emt.gi.phate <- mean(emt.gi.data[,7])
emt.gi.total <- c(emt.gi.tsne, emt.gi.umap, emt.gi.pca, emt.gi.ae, emt.gi.scvis, emt.gi.phate)
emt.gi.tsne <- emt.gi.tsne/sum(emt.gi.total)
emt.gi.umap <- emt.gi.umap/sum(emt.gi.total)
emt.gi.pca <- emt.gi.pca/sum(emt.gi.total)
emt.gi.ae <- emt.gi.ae/sum(emt.gi.total)
emt.gi.scvis <- emt.gi.scvis /sum(emt.gi.total)
emt.gi.phate <- emt.gi.phate/sum(emt.gi.total)

############################################################## ipsc
########### with VAE
ipsc.gi.tsne <- mean(ipsc.gi.data[,1])
ipsc.gi.umap <- mean(ipsc.gi.data[,2])
ipsc.gi.pca <- mean(ipsc.gi.data[,3])
ipsc.gi.ae <- mean(ipsc.gi.data[,4])
ipsc.gi.vae <- mean(ipsc.gi.data[,5])
ipsc.gi.scvis <- mean(ipsc.gi.data[,6])
ipsc.gi.phate <- mean(ipsc.gi.data[,7])
ipsc.gi.total <- c(ipsc.gi.tsne, ipsc.gi.umap, ipsc.gi.pca, ipsc.gi.ae, ipsc.gi.vae, ipsc.gi.scvis, ipsc.gi.phate)
ipsc.gi.tsne <- ipsc.gi.tsne/sum(ipsc.gi.total)
ipsc.gi.umap <- ipsc.gi.umap/sum(ipsc.gi.total)
ipsc.gi.pca <- ipsc.gi.pca/sum(ipsc.gi.total)
ipsc.gi.ae <- ipsc.gi.ae/sum(ipsc.gi.total)
ipsc.gi.vae <- ipsc.gi.vae/sum(ipsc.gi.total)
ipsc.gi.scvis <- ipsc.gi.scvis /sum(ipsc.gi.total)
ipsc.gi.phate <- ipsc.gi.phate/sum(ipsc.gi.total)
############ no VAE
ipsc.gi.tsne <- mean(ipsc.gi.data[,1])
ipsc.gi.umap <- mean(ipsc.gi.data[,2])
ipsc.gi.pca <- mean(ipsc.gi.data[,3])
ipsc.gi.ae <- mean(ipsc.gi.data[,4])
ipsc.gi.scvis <- mean(ipsc.gi.data[,6])
ipsc.gi.phate <- mean(ipsc.gi.data[,7])
ipsc.gi.total <- c(ipsc.gi.tsne, ipsc.gi.umap, ipsc.gi.pca, ipsc.gi.ae, ipsc.gi.scvis, ipsc.gi.phate)
ipsc.gi.tsne <- ipsc.gi.tsne/sum(ipsc.gi.total)
ipsc.gi.umap <- ipsc.gi.umap/sum(ipsc.gi.total)
ipsc.gi.pca <- ipsc.gi.pca/sum(ipsc.gi.total)
ipsc.gi.ae <- ipsc.gi.ae/sum(ipsc.gi.total)
ipsc.gi.scvis <- ipsc.gi.scvis /sum(ipsc.gi.total)
ipsc.gi.phate <- ipsc.gi.phate/sum(ipsc.gi.total)
############################################################## sperm
########### with VAE
sperm.gi.tsne <- mean(sperm.gi.data[,1])
sperm.gi.umap <- mean(sperm.gi.data[,2])
sperm.gi.pca <- mean(sperm.gi.data[,3])
sperm.gi.ae <- mean(sperm.gi.data[,4])
sperm.gi.vae <- mean(sperm.gi.data[,5])
sperm.gi.scvis <- mean(sperm.gi.data[,6])
sperm.gi.phate <- mean(sperm.gi.data[,7])
sperm.gi.total <- c(sperm.gi.tsne, sperm.gi.umap, sperm.gi.pca, sperm.gi.ae, sperm.gi.vae, sperm.gi.scvis, sperm.gi.phate)
sperm.gi.tsne <- sperm.gi.tsne/sum(sperm.gi.total)
sperm.gi.umap <- sperm.gi.umap/sum(sperm.gi.total)
sperm.gi.pca <- sperm.gi.pca/sum(sperm.gi.total)
sperm.gi.ae <- sperm.gi.ae/sum(sperm.gi.total)
sperm.gi.vae <- sperm.gi.vae/sum(sperm.gi.total)
sperm.gi.scvis <- sperm.gi.scvis /sum(sperm.gi.total)
sperm.gi.phate <- sperm.gi.phate/sum(sperm.gi.total)
############ no VAE
sperm.gi.tsne <- mean(sperm.gi.data[,1])
sperm.gi.umap <- mean(sperm.gi.data[,2])
sperm.gi.pca <- mean(sperm.gi.data[,3])
sperm.gi.ae <- mean(sperm.gi.data[,4])
sperm.gi.scvis <- mean(sperm.gi.data[,6])
sperm.gi.phate <- mean(sperm.gi.data[,7])
sperm.gi.total <- c(sperm.gi.tsne, sperm.gi.umap, sperm.gi.pca, sperm.gi.ae, sperm.gi.scvis, sperm.gi.phate)
sperm.gi.tsne <- sperm.gi.tsne/sum(sperm.gi.total)
sperm.gi.umap <- sperm.gi.umap/sum(sperm.gi.total)
sperm.gi.pca <- sperm.gi.pca/sum(sperm.gi.total)
sperm.gi.ae <- sperm.gi.ae/sum(sperm.gi.total)
sperm.gi.scvis <- sperm.gi.scvis /sum(sperm.gi.total)
sperm.gi.phate <- sperm.gi.phate/sum(sperm.gi.total)

################################################################################ GI plot
gi.tsne <- c(emt.gi.tsne, ipsc.gi.tsne, sperm.gi.tsne)
gi.umap <- c(emt.gi.umap, ipsc.gi.umap, sperm.gi.umap)
gi.pca <- c(emt.gi.pca, ipsc.gi.pca, sperm.gi.pca)
gi.ae <- c(emt.gi.ae, ipsc.gi.ae, sperm.gi.ae)
gi.vae <- c(emt.gi.vae, ipsc.gi.vae, sperm.gi.vae)
gi.scvis <- c(emt.gi.scvis, ipsc.gi.scvis, sperm.gi.scvis)
gi.phate <- c(emt.gi.phate, ipsc.gi.phate, sperm.gi.phate)


gi.tsne <- c(0.20185490, 0.21184144, 0.22900094)
gi.umap <- c(0.2248036, 0.2217685, 0.2289251)
gi.ae <- c(0.11645892, 0.15166588, 0.13865790)
gi.scvis <- c(0.06195307, 0.08320686, 0.05916162)

avr.gi.1 <- (mean(gi.tsne) + mean(gi.umap) + mean(gi.pca) + mean(gi.ae) + mean(gi.vae) + mean(gi.scvis) + mean(gi.phate))/7
avr.gi.2 <- (mean(gi.tsne) + mean(gi.umap) + mean(gi.pca) + mean(gi.ae) +  mean(gi.scvis) + mean(gi.phate))/6
avr.gi.1
avr.gi.2

gi <- data.frame(tsne = gi.tsne,
                  umap = gi.umap,
                  pca = gi.pca,
                  ae = gi.ae,
                  vae = gi.vae,
                  scvis = gi.scvis,
                  phate = gi.phate)

gi.summary <- data.frame(RGP=apply(gi, 2, mean), 
                          standard_deviation=apply(gi, 2, sd),
                          Method=colnames(gi))

ggplot(gi.summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                               "vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1) 


################################################################################ SI
load("si.data.emt.rdata")
load("si.data.ipsc.rdata")
load("si.data.sperm.rdata")
emt.si.data <- data.frame(si.data.emt)
ipsc.si.data <- data.frame(si.data.ipsc)
sperm.si.data <- data.frame(si.data.sperm)

########### with VAE
emt.si.tsne <- mean(emt.si.data[,1])
emt.si.umap <- mean(emt.si.data[,2])
emt.si.pca <- mean(emt.si.data[,3])
emt.si.ae <- mean(emt.si.data[,4])
emt.si.vae <- mean(emt.si.data[,5])
emt.si.scvis <- mean(emt.si.data[,6])
emt.si.phate <- mean(emt.si.data[,7])
emt.si.total <- c(emt.si.tsne, emt.si.umap, emt.si.pca, emt.si.ae, emt.si.vae, emt.si.scvis, emt.si.phate)
emt.si.tsne <- emt.si.tsne/sum(emt.si.total)
emt.si.umap <- emt.si.umap/sum(emt.si.total)
emt.si.pca <- emt.si.pca/sum(emt.si.total)
emt.si.ae <- emt.si.ae/sum(emt.si.total)
emt.si.vae <- emt.si.vae/sum(emt.si.total)
emt.si.scvis <- emt.si.scvis /sum(emt.si.total)
emt.si.phate <- emt.si.phate/sum(emt.si.total)
############ no VAE
emt.si.tsne <- mean(emt.si.data[,1])
emt.si.umap <- mean(emt.si.data[,2])
emt.si.pca <- mean(emt.si.data[,3])
emt.si.ae <- mean(emt.si.data[,4])
emt.si.scvis <- mean(emt.si.data[,6])
emt.si.phate <- mean(emt.si.data[,7])
emt.si.total <- c(emt.si.tsne, emt.si.umap, emt.si.pca, emt.si.ae, emt.si.scvis, emt.si.phate)
emt.si.tsne <- emt.si.tsne/sum(emt.si.total)
emt.si.umap <- emt.si.umap/sum(emt.si.total)
emt.si.pca <- emt.si.pca/sum(emt.si.total)
emt.si.ae <- emt.si.ae/sum(emt.si.total)
emt.si.scvis <- emt.si.scvis /sum(emt.si.total)
emt.si.phate <- emt.si.phate/sum(emt.si.total)

############################################################## ipsc
########### with VAE
ipsc.si.tsne <- mean(ipsc.si.data[,1])
ipsc.si.umap <- mean(ipsc.si.data[,2])
ipsc.si.pca <- mean(ipsc.si.data[,3])
ipsc.si.ae <- mean(ipsc.si.data[,4])
ipsc.si.vae <- mean(ipsc.si.data[,5])
ipsc.si.scvis <- mean(ipsc.si.data[,6])
ipsc.si.phate <- mean(ipsc.si.data[,7])
ipsc.si.total <- c(ipsc.si.tsne, ipsc.si.umap, ipsc.si.pca, ipsc.si.ae, ipsc.si.vae, ipsc.si.scvis, ipsc.si.phate)
ipsc.si.tsne <- ipsc.si.tsne/sum(ipsc.si.total)
ipsc.si.umap <- ipsc.si.umap/sum(ipsc.si.total)
ipsc.si.pca <- ipsc.si.pca/sum(ipsc.si.total)
ipsc.si.ae <- ipsc.si.ae/sum(ipsc.si.total)
ipsc.si.vae <- ipsc.si.vae/sum(ipsc.si.total)
ipsc.si.scvis <- ipsc.si.scvis /sum(ipsc.si.total)
ipsc.si.phate <- ipsc.si.phate/sum(ipsc.si.total)
############ no VAE
ipsc.si.tsne <- mean(ipsc.si.data[,1])
ipsc.si.umap <- mean(ipsc.si.data[,2])
ipsc.si.pca <- mean(ipsc.si.data[,3])
ipsc.si.ae <- mean(ipsc.si.data[,4])
ipsc.si.scvis <- mean(ipsc.si.data[,6])
ipsc.si.phate <- mean(ipsc.si.data[,7])
ipsc.si.total <- c(ipsc.si.tsne, ipsc.si.umap, ipsc.si.pca, ipsc.si.ae,ipsc.si.scvis, ipsc.si.phate)
ipsc.si.tsne <- ipsc.si.tsne/sum(ipsc.si.total)
ipsc.si.umap <- ipsc.si.umap/sum(ipsc.si.total)
ipsc.si.pca <- ipsc.si.pca/sum(ipsc.si.total)
ipsc.si.ae <- ipsc.si.ae/sum(ipsc.si.total)
ipsc.si.scvis <- ipsc.si.scvis /sum(ipsc.si.total)
ipsc.si.phate <- ipsc.si.phate/sum(ipsc.si.total)
############################################################## sperm
########### with VAE
sperm.si.tsne <- mean(sperm.si.data[,1])
sperm.si.umap <- mean(sperm.si.data[,2])
sperm.si.pca <- mean(sperm.si.data[,3])
sperm.si.ae <- mean(sperm.si.data[,4])
sperm.si.vae <- mean(sperm.si.data[,5])
sperm.si.scvis <- mean(sperm.si.data[,6])
sperm.si.phate <- mean(sperm.si.data[,7])
sperm.si.total <- c(sperm.si.tsne, sperm.si.umap, sperm.si.pca, sperm.si.ae, sperm.si.vae, sperm.si.scvis, sperm.si.phate)
sperm.si.tsne <- sperm.si.tsne/sum(sperm.si.total)
sperm.si.umap <- sperm.si.umap/sum(sperm.si.total)
sperm.si.pca <- sperm.si.pca/sum(sperm.si.total)
sperm.si.ae <- sperm.si.ae/sum(sperm.si.total)
sperm.si.vae <- sperm.si.vae/sum(sperm.si.total)
sperm.si.scvis <- sperm.si.scvis /sum(sperm.si.total)
sperm.si.phate <- sperm.si.phate/sum(sperm.si.total)
############ no VAE
sperm.si.tsne <- mean(sperm.si.data[,1])
sperm.si.umap <- mean(sperm.si.data[,2])
sperm.si.pca <- mean(sperm.si.data[,3])
sperm.si.ae <- mean(sperm.si.data[,4])
sperm.si.scvis <- mean(sperm.si.data[,6])
sperm.si.phate <- mean(sperm.si.data[,7])
sperm.si.total <- c(sperm.si.tsne, sperm.si.umap, sperm.si.pca, sperm.si.ae, sperm.si.scvis, sperm.si.phate)
sperm.si.tsne <- sperm.si.tsne/sum(sperm.si.total)
sperm.si.umap <- sperm.si.umap/sum(sperm.si.total)
sperm.si.pca <- sperm.si.pca/sum(sperm.si.total)
sperm.si.ae <- sperm.si.ae/sum(sperm.si.total)
sperm.si.scvis <- sperm.si.scvis /sum(sperm.si.total)
sperm.si.phate <- sperm.si.phate/sum(sperm.si.total)
################################################################################ SI plot
si.tsne <- c(emt.si.tsne, ipsc.si.tsne, sperm.si.tsne)
si.umap <- c(emt.si.umap, ipsc.si.umap, sperm.si.umap)
si.pca <- c(emt.si.pca, ipsc.si.pca, sperm.si.pca)
si.ae <- c(emt.si.ae, ipsc.si.ae, sperm.si.ae)
si.vae <- c(emt.si.vae, ipsc.si.vae, sperm.si.vae)
si.scvis <- c(emt.si.scvis, ipsc.si.scvis, sperm.si.scvis)
si.phate <- c(emt.si.phate, ipsc.si.phate, sperm.si.phate)

si.umap <- c(0.3048382, 0.2818949, 0.2678435)
si.phate <- c(0.19800422, 0.16581182, 0.14281790)
si.pca <- c(0.16703022, 0.15133179, 0.11302540)

avr.si.1 <- (mean(si.tsne) + mean(si.umap) + mean(si.pca) + mean(si.ae) + mean(si.vae) + mean(si.scvis) + mean(si.phate))/7
avr.si.2 <- (mean(si.tsne) + mean(si.umap) + mean(si.pca) + mean(si.ae) +  mean(si.scvis) + mean(si.phate))/6
avr.si.1
avr.si.2

si <- data.frame(tsne = si.tsne,
                 umap = si.umap,
                 pca = si.pca,
                 ae = si.ae,
                 #vae = si.vae,
                 scvis = si.scvis,
                 phate = si.phate)

si.summary <- data.frame(RGP=apply(si, 2, mean), 
                         standard_deviation=apply(si, 2, sd),
                         Method=colnames(si))

ggplot(si.summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                               #"vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1) 


################################################################################ OI
load("oi.data.emt.rdata")
load("oi.data.ipsc.rdata")
load("oi.data.sperm.rdata")

emt.oi.data <- data.frame(oi.data.emt)
ipsc.oi.data <- data.frame(oi.data.ipsc)
sperm.oi.data <- data.frame(oi.data.sperm)
########### with VAE
emt.oi.tsne <- mean(emt.oi.data[,1])
emt.oi.umap <- mean(emt.oi.data[,2])
emt.oi.pca <- mean(emt.oi.data[,3])
emt.oi.ae <- mean(emt.oi.data[,4])
emt.oi.vae <- mean(emt.oi.data[,5])
emt.oi.scvis <- mean(emt.oi.data[,6])
emt.oi.phate <- mean(emt.oi.data[,7])
emt.oi.total <- c(emt.oi.tsne, emt.oi.umap, emt.oi.pca, emt.oi.ae, emt.oi.vae, emt.oi.scvis, emt.oi.phate)
emt.oi.tsne <- emt.oi.tsne/sum(emt.oi.total)
emt.oi.umap <- emt.oi.umap/sum(emt.oi.total)
emt.oi.pca <- emt.oi.pca/sum(emt.oi.total)
emt.oi.ae <- emt.oi.ae/sum(emt.oi.total)
emt.oi.vae <- emt.oi.vae/sum(emt.oi.total)
emt.oi.scvis <- emt.oi.scvis /sum(emt.oi.total)
emt.oi.phate <- emt.oi.phate/sum(emt.oi.total)
############ no VAE
emt.oi.tsne <- mean(emt.oi.data[,1])
emt.oi.umap <- mean(emt.oi.data[,2])
emt.oi.pca <- mean(emt.oi.data[,3])
emt.oi.ae <- mean(emt.oi.data[,4])
emt.oi.scvis <- mean(emt.oi.data[,6])
emt.oi.phate <- mean(emt.oi.data[,7])
emt.oi.total <- c(emt.oi.tsne, emt.oi.umap, emt.oi.pca, emt.oi.ae, emt.oi.scvis, emt.oi.phate)
emt.oi.tsne <- emt.oi.tsne/sum(emt.oi.total)
emt.oi.umap <- emt.oi.umap/sum(emt.oi.total)
emt.oi.pca <- emt.oi.pca/sum(emt.oi.total)
emt.oi.ae <- emt.oi.ae/sum(emt.oi.total)
emt.oi.scvis <- emt.oi.scvis /sum(emt.oi.total)
emt.oi.phate <- emt.oi.phate/sum(emt.oi.total)
############################################################## ipsc
########### with VAE
ipsc.oi.tsne <- mean(ipsc.oi.data[,1])
ipsc.oi.umap <- mean(ipsc.oi.data[,2])
ipsc.oi.pca <- mean(ipsc.oi.data[,3])
ipsc.oi.ae <- mean(ipsc.oi.data[,4])
ipsc.oi.vae <- mean(ipsc.oi.data[,5])
ipsc.oi.scvis <- mean(ipsc.oi.data[,6])
ipsc.oi.phate <- mean(ipsc.oi.data[,7])
ipsc.oi.total <- c(ipsc.oi.tsne, ipsc.oi.umap, ipsc.oi.pca, ipsc.oi.ae, ipsc.oi.vae, ipsc.oi.scvis, ipsc.oi.phate)
ipsc.oi.tsne <- ipsc.oi.tsne/sum(ipsc.oi.total)
ipsc.oi.umap <- ipsc.oi.umap/sum(ipsc.oi.total)
ipsc.oi.pca <- ipsc.oi.pca/sum(ipsc.oi.total)
ipsc.oi.ae <- ipsc.oi.ae/sum(ipsc.oi.total)
ipsc.oi.vae <- ipsc.oi.vae/sum(ipsc.oi.total)
ipsc.oi.scvis <- ipsc.oi.scvis /sum(ipsc.oi.total)
ipsc.oi.phate <- ipsc.oi.phate/sum(ipsc.oi.total)
############ no VAE
ipsc.oi.tsne <- mean(ipsc.oi.data[,1])
ipsc.oi.umap <- mean(ipsc.oi.data[,2])
ipsc.oi.pca <- mean(ipsc.oi.data[,3])
ipsc.oi.ae <- mean(ipsc.oi.data[,4])
ipsc.oi.scvis <- mean(ipsc.oi.data[,6])
ipsc.oi.phate <- mean(ipsc.oi.data[,7])
ipsc.oi.total <- c(ipsc.oi.tsne, ipsc.oi.umap, ipsc.oi.pca, ipsc.oi.ae, ipsc.oi.scvis, ipsc.oi.phate)
ipsc.oi.tsne <- ipsc.oi.tsne/sum(ipsc.oi.total)
ipsc.oi.umap <- ipsc.oi.umap/sum(ipsc.oi.total)
ipsc.oi.pca <- ipsc.oi.pca/sum(ipsc.oi.total)
ipsc.oi.ae <- ipsc.oi.ae/sum(ipsc.oi.total)
ipsc.oi.scvis <- ipsc.oi.scvis /sum(ipsc.oi.total)
ipsc.oi.phate <- ipsc.oi.phate/sum(ipsc.oi.total)
############################################################## sperm
########### with VAE
sperm.oi.tsne <- mean(sperm.oi.data[,1])
sperm.oi.umap <- mean(sperm.oi.data[,2])
sperm.oi.pca <- mean(sperm.oi.data[,3])
sperm.oi.ae <- mean(sperm.oi.data[,4])
sperm.oi.vae <- mean(sperm.oi.data[,5])
sperm.oi.scvis <- mean(sperm.oi.data[,6])
sperm.oi.phate <- mean(sperm.oi.data[,7])
sperm.oi.total <- c(sperm.oi.tsne, sperm.oi.umap, sperm.oi.pca, sperm.oi.ae, sperm.oi.vae, sperm.oi.scvis, sperm.oi.phate)
sperm.oi.tsne <- sperm.oi.tsne/sum(sperm.oi.total)
sperm.oi.umap <- sperm.oi.umap/sum(sperm.oi.total)
sperm.oi.pca <- sperm.oi.pca/sum(sperm.oi.total)
sperm.oi.ae <- sperm.oi.ae/sum(sperm.oi.total)
sperm.oi.vae <- sperm.oi.vae/sum(sperm.oi.total)
sperm.oi.scvis <- sperm.oi.scvis /sum(sperm.oi.total)
sperm.oi.phate <- sperm.oi.phate/sum(sperm.oi.total)
############ no VAE
sperm.oi.tsne <- mean(sperm.oi.data[,1])
sperm.oi.umap <- mean(sperm.oi.data[,2])
sperm.oi.pca <- mean(sperm.oi.data[,3])
sperm.oi.ae <- mean(sperm.oi.data[,4])
sperm.oi.scvis <- mean(sperm.oi.data[,6])
sperm.oi.phate <- mean(sperm.oi.data[,7])
sperm.oi.total <- c(sperm.oi.tsne, sperm.oi.umap, sperm.oi.pca, sperm.oi.ae, sperm.oi.scvis, sperm.oi.phate)
sperm.oi.tsne <- sperm.oi.tsne/sum(sperm.oi.total)
sperm.oi.umap <- sperm.oi.umap/sum(sperm.oi.total)
sperm.oi.pca <- sperm.oi.pca/sum(sperm.oi.total)
sperm.oi.ae <- sperm.oi.ae/sum(sperm.oi.total)
sperm.oi.scvis <- sperm.oi.scvis /sum(sperm.oi.total)
sperm.oi.phate <- sperm.oi.phate/sum(sperm.oi.total)
################################################################################ OI plot
oi.tsne <- c(emt.oi.tsne, ipsc.oi.tsne, sperm.oi.tsne)
oi.umap <- c(emt.oi.umap, ipsc.oi.umap, sperm.oi.umap)
oi.pca <- c(emt.oi.pca, ipsc.oi.pca, sperm.oi.pca)
oi.ae <- c(emt.oi.ae, ipsc.oi.ae, sperm.oi.ae)
oi.vae <- c(emt.oi.vae, ipsc.oi.vae, sperm.oi.vae)
oi.scvis <- c(emt.oi.scvis, ipsc.oi.scvis, sperm.oi.scvis)
oi.phate <- c(emt.oi.phate, ipsc.oi.phate, sperm.oi.phate)

oi.tsne <- c(0.2126849, 0.2172839, 0.2373539)
oi.umap <- c(0.013431362, 0.013950021, 0.015199897)
oi.pca <- c(0.063757169, 0.062467050, 0.083586324)
oi.ae <- c(0.142140656, 0.125697652, 0.134355747)
oi.scvis <- c(0.2874390, 0.2664273, 0.2850795)

avr.oi.1 <- (mean(oi.tsne) + mean(oi.umap) + mean(oi.pca) + mean(oi.ae) + mean(oi.vae) + mean(oi.scvis) + mean(oi.phate))/7
avr.oi.2 <- (mean(oi.tsne) + mean(oi.umap) + mean(oi.pca) + mean(oi.ae) +  mean(oi.scvis) + mean(oi.phate))/6
avr.oi.1
avr.oi.2

oi <- data.frame(tsne = oi.tsne,
                 umap = oi.umap,
                 pca = oi.pca,
                 ae = oi.ae,
                 vae = oi.vae,
                 scvis = oi.scvis,
                 phate = oi.phate)

oi.summary <- data.frame(RGP=apply(oi, 2, mean), 
                         standard_deviation=apply(oi, 2, sd),
                         Method=colnames(oi))

ggplot(oi.summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                                "vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1) 

################################################################################ UI
load("ui.data.emt.rdata")
load("ui.data.ipsc.rdata")
load("ui.data.sperm.rdata")
emt.ui.data <- data.frame(ui.data.emt)
ipsc.ui.data <- data.frame(ui.data.ipsc)
sperm.ui.data <- data.frame(ui.data.sperm)

########### with VAE
emt.ui.tsne <- mean(emt.ui.data[,1])
emt.ui.umap <- mean(emt.ui.data[,2])
emt.ui.pca <- mean(emt.ui.data[,3])
emt.ui.ae <- mean(emt.ui.data[,4])
emt.ui.vae <- mean(emt.ui.data[,5])
emt.ui.scvis <- mean(emt.ui.data[,6])
emt.ui.phate <- mean(emt.ui.data[,7])
emt.ui.total <- c(emt.ui.tsne, emt.ui.umap, emt.ui.pca, emt.ui.ae, emt.ui.vae, emt.ui.scvis, emt.ui.phate)
emt.ui.tsne <- emt.ui.tsne/sum(emt.ui.total)
emt.ui.umap <- emt.ui.umap/sum(emt.ui.total)
emt.ui.pca <- emt.ui.pca/sum(emt.ui.total)
emt.ui.ae <- emt.ui.ae/sum(emt.ui.total)
emt.ui.vae <- emt.ui.vae/sum(emt.ui.total)
emt.ui.scvis <- emt.ui.scvis /sum(emt.ui.total)
emt.ui.phate <- emt.ui.phate/sum(emt.ui.total)
############ no VAE
emt.ui.tsne <- mean(emt.ui.data[,1])
emt.ui.umap <- mean(emt.ui.data[,2])
emt.ui.pca <- mean(emt.ui.data[,3])
emt.ui.ae <- mean(emt.ui.data[,4])
emt.ui.scvis <- mean(emt.ui.data[,6])
emt.ui.phate <- mean(emt.ui.data[,7])
emt.ui.total <- c(emt.ui.tsne, emt.ui.umap, emt.ui.pca, emt.ui.ae, emt.ui.scvis, emt.ui.phate)
emt.ui.tsne <- emt.ui.tsne/sum(emt.ui.total)
emt.ui.umap <- emt.ui.umap/sum(emt.ui.total)
emt.ui.pca <- emt.ui.pca/sum(emt.ui.total)
emt.ui.ae <- emt.ui.ae/sum(emt.ui.total)
emt.ui.scvis <- emt.ui.scvis /sum(emt.ui.total)
emt.ui.phate <- emt.ui.phate/sum(emt.ui.total)
############################################################## ipsc
########### with VAE
ipsc.ui.tsne <- mean(ipsc.ui.data[,1])
ipsc.ui.umap <- mean(ipsc.ui.data[,2])
ipsc.ui.pca <- mean(ipsc.ui.data[,3])
ipsc.ui.ae <- mean(ipsc.ui.data[,4])
ipsc.ui.vae <- mean(ipsc.ui.data[,5])
ipsc.ui.scvis <- mean(ipsc.ui.data[,6])
ipsc.ui.phate <- mean(ipsc.ui.data[,7])
ipsc.ui.total <- c(ipsc.ui.tsne, ipsc.ui.umap, ipsc.ui.pca, ipsc.ui.ae, ipsc.ui.vae, ipsc.ui.scvis, ipsc.ui.phate)
ipsc.ui.tsne <- ipsc.ui.tsne/sum(ipsc.ui.total)
ipsc.ui.umap <- ipsc.ui.umap/sum(ipsc.ui.total)
ipsc.ui.pca <- ipsc.ui.pca/sum(ipsc.ui.total)
ipsc.ui.ae <- ipsc.ui.ae/sum(ipsc.ui.total)
ipsc.ui.vae <- ipsc.ui.vae/sum(ipsc.ui.total)
ipsc.ui.scvis <- ipsc.ui.scvis /sum(ipsc.ui.total)
ipsc.ui.phate <- ipsc.ui.phate/sum(ipsc.ui.total)
############ no VAE
ipsc.ui.tsne <- mean(ipsc.ui.data[,1])
ipsc.ui.umap <- mean(ipsc.ui.data[,2])
ipsc.ui.pca <- mean(ipsc.ui.data[,3])
ipsc.ui.ae <- mean(ipsc.ui.data[,4])
ipsc.ui.scvis <- mean(ipsc.ui.data[,6])
ipsc.ui.phate <- mean(ipsc.ui.data[,7])
ipsc.ui.total <- c(ipsc.ui.tsne, ipsc.ui.umap, ipsc.ui.pca, ipsc.ui.ae, ipsc.ui.scvis, ipsc.ui.phate)
ipsc.ui.tsne <- ipsc.ui.tsne/sum(ipsc.ui.total)
ipsc.ui.umap <- ipsc.ui.umap/sum(ipsc.ui.total)
ipsc.ui.pca <- ipsc.ui.pca/sum(ipsc.ui.total)
ipsc.ui.ae <- ipsc.ui.ae/sum(ipsc.ui.total)
ipsc.ui.scvis <- ipsc.ui.scvis /sum(ipsc.ui.total)
ipsc.ui.phate <- ipsc.ui.phate/sum(ipsc.ui.total)
############################################################## sperm
########### with VAE
sperm.ui.tsne <- mean(sperm.ui.data[,1])
sperm.ui.umap <- mean(sperm.ui.data[,2])
sperm.ui.pca <- mean(sperm.ui.data[,3])
sperm.ui.ae <- mean(sperm.ui.data[,4])
sperm.ui.vae <- mean(sperm.ui.data[,5])
sperm.ui.scvis <- mean(sperm.ui.data[,6])
sperm.ui.phate <- mean(sperm.ui.data[,7])
sperm.ui.total <- c(sperm.ui.tsne, sperm.ui.umap, sperm.ui.pca, sperm.ui.ae, sperm.ui.vae, sperm.ui.scvis, sperm.ui.phate)
sperm.ui.tsne <- sperm.ui.tsne/sum(sperm.ui.total)
sperm.ui.umap <- sperm.ui.umap/sum(sperm.ui.total)
sperm.ui.pca <- sperm.ui.pca/sum(sperm.ui.total)
sperm.ui.ae <- sperm.ui.ae/sum(sperm.ui.total)
sperm.ui.vae <- sperm.ui.vae/sum(sperm.ui.total)
sperm.ui.scvis <- sperm.ui.scvis /sum(sperm.ui.total)
sperm.ui.phate <- sperm.ui.phate/sum(sperm.ui.total)
############ no VAE
sperm.ui.tsne <- mean(sperm.ui.data[,1])
sperm.ui.umap <- mean(sperm.ui.data[,2])
sperm.ui.pca <- mean(sperm.ui.data[,3])
sperm.ui.ae <- mean(sperm.ui.data[,4])
sperm.ui.scvis <- mean(sperm.ui.data[,6])
sperm.ui.phate <- mean(sperm.ui.data[,7])
sperm.ui.total <- c(sperm.ui.tsne, sperm.ui.umap, sperm.ui.pca, sperm.ui.ae, sperm.ui.scvis, sperm.ui.phate)
sperm.ui.tsne <- sperm.ui.tsne/sum(sperm.ui.total)
sperm.ui.umap <- sperm.ui.umap/sum(sperm.ui.total)
sperm.ui.pca <- sperm.ui.pca/sum(sperm.ui.total)
sperm.ui.ae <- sperm.ui.ae/sum(sperm.ui.total)
sperm.ui.scvis <- sperm.ui.scvis /sum(sperm.ui.total)
sperm.ui.phate <- sperm.ui.phate/sum(sperm.ui.total)
################################################################################ UI plot
ui.tsne <- c(emt.ui.tsne, ipsc.ui.tsne, sperm.ui.tsne)
ui.umap <- c(emt.ui.umap, ipsc.ui.umap, sperm.ui.umap)
ui.pca <- c(emt.ui.pca, ipsc.ui.pca, sperm.ui.pca)
ui.ae <- c(emt.ui.ae, ipsc.ui.ae, sperm.ui.ae)
ui.vae <- c(emt.ui.vae, ipsc.ui.vae, sperm.ui.vae)
ui.scvis <- c(emt.ui.scvis, ipsc.ui.scvis, sperm.ui.scvis)
ui.phate <- c(emt.ui.phate, ipsc.ui.phate, sperm.ui.phate)

ui.tsne <- c(0.051429523, 0.057411899, 0.058778061)
ui.umap <- c(0.165977427, 0.101685280, 0.202870312)
ui.pca <- c(0.4500630, 0.5528038, 0.4929549)
ui.ae <- c(0.0288625728, 0.0202885144, 0.0220823653)
ui.scvis <- c(0.0263560397, 0.0103520540, 0.0204013655)
ui.phate <- c(0.019255183, 0.014685613, 0.012912673)

avr.ui.1 <- (mean(ui.tsne) + mean(ui.umap) + mean(ui.pca) + mean(ui.ae) + mean(ui.vae) + mean(ui.scvis) + mean(ui.phate))/7
avr.ui.2 <- (mean(ui.tsne) + mean(ui.umap) + mean(ui.pca) + mean(ui.ae) +  mean(ui.scvis) + mean(ui.phate))/6
avr.ui.1
avr.ui.2

ui <- data.frame(tsne = ui.tsne,
                 umap = ui.umap,
                 pca = ui.pca,
                 ae = ui.ae,
                 #vae = ui.vae,
                 scvis = ui.scvis,
                 phate = ui.phate)

ui.summary <- data.frame(RGP=apply(ui, 2, mean), 
                         standard_deviation=apply(ui, 2, sd),
                         Method=colnames(ui))

ggplot(ui.summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                               # "vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1) 

################################################################################ TI
load("ti.data.emt.rdata")
load("ti.data.ipsc.rdata")
load("ti.data.sperm.rdata")
emt.ti.data <- data.frame(ti.data.emt)
ipsc.ti.data <- data.frame(ti.data.ipsc)
sperm.ti.data <- data.frame(ti.data.sperm)

########### with VAE
emt.ti.tsne <- mean(emt.ti.data[,1])
emt.ti.umap <- mean(emt.ti.data[,2])
emt.ti.pca <- mean(emt.ti.data[,3])
emt.ti.ae <- mean(emt.ti.data[,4])
emt.ti.vae <- mean(emt.ti.data[,5])
emt.ti.scvis <- mean(emt.ti.data[,6])
emt.ti.phate <- mean(emt.ti.data[,7])
emt.ti.total <- c(emt.ti.tsne, emt.ti.umap, emt.ti.pca, emt.ti.ae, emt.ti.vae, emt.ti.scvis, emt.ti.phate)
emt.ti.tsne <- emt.ti.tsne/sum(emt.ti.total)
emt.ti.umap <- emt.ti.umap/sum(emt.ti.total)
emt.ti.pca <- emt.ti.pca/sum(emt.ti.total)
emt.ti.ae <- emt.ti.ae/sum(emt.ti.total)
emt.ti.vae <- emt.ti.vae/sum(emt.ti.total)
emt.ti.scvis <- emt.ti.scvis /sum(emt.ti.total)
emt.ti.phate <- emt.ti.phate/sum(emt.ti.total)
############ no VAE
emt.ti.tsne <- mean(emt.ti.data[,1])
emt.ti.umap <- mean(emt.ti.data[,2])
emt.ti.pca <- mean(emt.ti.data[,3])
emt.ti.ae <- mean(emt.ti.data[,4])
emt.ti.scvis <- mean(emt.ti.data[,6])
emt.ti.phate <- mean(emt.ti.data[,7])
emt.ti.total <- c(emt.ti.tsne, emt.ti.umap, emt.ti.pca, emt.ti.ae, emt.ti.scvis, emt.ti.phate)
emt.ti.tsne <- emt.ti.tsne/sum(emt.ti.total)
emt.ti.umap <- emt.ti.umap/sum(emt.ti.total)
emt.ti.pca <- emt.ti.pca/sum(emt.ti.total)
emt.ti.ae <- emt.ti.ae/sum(emt.ti.total)
emt.ti.scvis <- emt.ti.scvis /sum(emt.ti.total)
emt.ti.phate <- emt.ti.phate/sum(emt.ti.total)
############################################################## ipsc
########### with VAE
ipsc.ti.tsne <- mean(ipsc.ti.data[,1])
ipsc.ti.umap <- mean(ipsc.ti.data[,2])
ipsc.ti.pca <- mean(ipsc.ti.data[,3])
ipsc.ti.ae <- mean(ipsc.ti.data[,4])
ipsc.ti.vae <- mean(ipsc.ti.data[,5])
ipsc.ti.scvis <- mean(ipsc.ti.data[,6])
ipsc.ti.phate <- mean(ipsc.ti.data[,7])
ipsc.ti.total <- c(ipsc.ti.tsne, ipsc.ti.umap, ipsc.ti.pca, ipsc.ti.ae, ipsc.ti.vae, ipsc.ti.scvis, ipsc.ti.phate)
ipsc.ti.tsne <- ipsc.ti.tsne/sum(ipsc.ti.total)
ipsc.ti.umap <- ipsc.ti.umap/sum(ipsc.ti.total)
ipsc.ti.pca <- ipsc.ti.pca/sum(ipsc.ti.total)
ipsc.ti.ae <- ipsc.ti.ae/sum(ipsc.ti.total)
ipsc.ti.vae <- ipsc.ti.vae/sum(ipsc.ti.total)
ipsc.ti.scvis <- ipsc.ti.scvis /sum(ipsc.ti.total)
ipsc.ti.phate <- ipsc.ti.phate/sum(ipsc.ti.total)
############ no VAE
ipsc.ti.tsne <- mean(ipsc.ti.data[,1])
ipsc.ti.umap <- mean(ipsc.ti.data[,2])
ipsc.ti.pca <- mean(ipsc.ti.data[,3])
ipsc.ti.ae <- mean(ipsc.ti.data[,4])
ipsc.ti.scvis <- mean(ipsc.ti.data[,6])
ipsc.ti.phate <- mean(ipsc.ti.data[,7])
ipsc.ti.total <- c(ipsc.ti.tsne, ipsc.ti.umap, ipsc.ti.pca, ipsc.ti.ae, ipsc.ti.scvis, ipsc.ti.phate)
ipsc.ti.tsne <- ipsc.ti.tsne/sum(ipsc.ti.total)
ipsc.ti.umap <- ipsc.ti.umap/sum(ipsc.ti.total)
ipsc.ti.pca <- ipsc.ti.pca/sum(ipsc.ti.total)
ipsc.ti.ae <- ipsc.ti.ae/sum(ipsc.ti.total)
ipsc.ti.scvis <- ipsc.ti.scvis /sum(ipsc.ti.total)
ipsc.ti.phate <- ipsc.ti.phate/sum(ipsc.ti.total)
############################################################## sperm
########### with VAE
sperm.ti.tsne <- mean(sperm.ti.data[,1])
sperm.ti.umap <- mean(sperm.ti.data[,2])
sperm.ti.pca <- mean(sperm.ti.data[,3])
sperm.ti.ae <- mean(sperm.ti.data[,4])
sperm.ti.vae <- mean(sperm.ti.data[,5])
sperm.ti.scvis <- mean(sperm.ti.data[,6])
sperm.ti.phate <- mean(sperm.ti.data[,7])
sperm.ti.total <- c(sperm.ti.tsne, sperm.ti.umap, sperm.ti.pca, sperm.ti.ae, sperm.ti.vae, sperm.ti.scvis, sperm.ti.phate)
sperm.ti.tsne <- sperm.ti.tsne/sum(sperm.ti.total)
sperm.ti.umap <- sperm.ti.umap/sum(sperm.ti.total)
sperm.ti.pca <- sperm.ti.pca/sum(sperm.ti.total)
sperm.ti.ae <- sperm.ti.ae/sum(sperm.ti.total)
sperm.ti.vae <- sperm.ti.vae/sum(sperm.ti.total)
sperm.ti.scvis <- sperm.ti.scvis /sum(sperm.ti.total)
sperm.ti.phate <- sperm.ti.phate/sum(sperm.ti.total)
############ no VAE
sperm.ti.tsne <- mean(sperm.ti.data[,1])
sperm.ti.umap <- mean(sperm.ti.data[,2])
sperm.ti.pca <- mean(sperm.ti.data[,3])
sperm.ti.ae <- mean(sperm.ti.data[,4])
sperm.ti.scvis <- mean(sperm.ti.data[,6])
sperm.ti.phate <- mean(sperm.ti.data[,7])
sperm.ti.total <- c(sperm.ti.tsne, sperm.ti.umap, sperm.ti.pca, sperm.ti.ae, sperm.ti.scvis, sperm.ti.phate)
sperm.ti.tsne <- sperm.ti.tsne/sum(sperm.ti.total)
sperm.ti.umap <- sperm.ti.umap/sum(sperm.ti.total)
sperm.ti.pca <- sperm.ti.pca/sum(sperm.ti.total)
sperm.ti.ae <- sperm.ti.ae/sum(sperm.ti.total)
sperm.ti.scvis <- sperm.ti.scvis /sum(sperm.ti.total)
sperm.ti.phate <- sperm.ti.phate/sum(sperm.ti.total)
################################################################################ GI plot
ti.tsne <- c(emt.ti.tsne, ipsc.ti.tsne, sperm.ti.tsne)
ti.umap <- c(emt.ti.umap, ipsc.ti.umap, sperm.ti.umap)
ti.pca <- c(emt.ti.pca, ipsc.ti.pca, sperm.ti.pca)
ti.ae <- c(emt.ti.ae, ipsc.ti.ae, sperm.ti.ae)
ti.vae <- c(emt.ti.vae, ipsc.ti.vae, sperm.ti.vae)
ti.scvis <- c(emt.ti.scvis, ipsc.ti.scvis, sperm.ti.scvis)
ti.phate <- c(emt.ti.phate, ipsc.ti.phate, sperm.ti.phate)

ti.ae <- c(0.12114040, 0.10198089, 0.11590640)
ti.vae <- c(0.3037686, 0.2372697, 0.2728027)
ti.scvis <- c(0.12177073, 0.12690095, 0.13531016)
ti.phate <- c(0.3203828, 0.3640432, 0.2863617)

avr.ti.1 <- (mean(ti.tsne) + mean(ti.umap) + mean(ti.pca) + mean(ti.ae) + mean(ti.vae) + mean(ti.scvis) + mean(ti.phate))/7
avr.ti.2 <- (mean(ti.tsne) + mean(ti.umap) + mean(ti.pca) + mean(ti.ae) +  mean(ti.scvis) + mean(ti.phate))/6
avr.ti.1
avr.ti.2

ti <- data.frame(tsne = ti.tsne,
                 umap = ti.umap,
                 pca = ti.pca,
                 ae = ti.ae,
                 #vae = ti.vae,
                 scvis = ti.scvis,
                 phate = ti.phate)

ti.summary <- data.frame(RGP=apply(ti, 2, mean), 
                         standard_deviation=apply(ti, 2, sd),
                         Method=colnames(ti))

ggplot(ti.summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                               # "vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1) 

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
SL_gi <- c(mean(gi.tsne), mean(gi.umap), mean(gi.pca), mean(gi.ae), mean(gi.vae), mean(gi.scvis), mean(gi.phate))
SL_si <- c(mean(si.tsne), mean(si.umap), mean(si.pca), mean(si.ae), mean(si.vae), mean(si.scvis), mean(si.phate))
SL_oi <- c(mean(oi.tsne), mean(oi.umap), mean(oi.pca), mean(oi.ae), mean(oi.vae), mean(oi.scvis), mean(oi.phate))
SL_ui <- c(mean(ui.tsne), mean(ui.umap), mean(ui.pca), mean(ui.ae), mean(ui.vae), mean(ui.scvis), mean(ui.phate))
SL_ti <- c(mean(ti.tsne), mean(ti.umap), mean(ti.pca), mean(ti.ae), mean(ti.vae), mean(ti.scvis), mean(ti.phate))
SL_gi <- c(0.21423243, 0.22516573, 0.01557698, 0.13559423, 0.29463957, 0.06810718, 0.05001720)
SL_si <- c(0.07078482, 0.28485887, 0.14379580, 0.08906754, 0.17814453, 0.06447049, 0.16887798)
SL_oi <- c(0.22244090, 0.01419376, 0.06993685, 0.13406468, 0.24986343, 0.27964860, 0.02385177)
SL_ui <- c(0.05587316, 0.15684434, 0.49860723, 0.02374448, 0.23027648, 0.01903649, 0.01561782)
SL_ti <- c(0.09136187, 0.06136482, 0.01139388, 0.11300923, 0.27128033, 0.12799395, 0.32359590)
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
tsne_final <- c(gi.tsne, si.tsne, oi.tsne, ui.tsne, ti.tsne)
umap_final <- c(gi.umap, si.umap, oi.umap, ui.umap, ti.umap)
pca_final <- c(gi.pca, si.pca, oi.pca, ui.pca, ti.pca)
ae_final <- c(gi.ae, si.ae, oi.ae, ui.ae, ti.ae)
vae_final <- c(gi.vae, si.vae, oi.vae, ui.vae, ti.vae)
scvis_final <- c(gi.scvis, si.scvis, oi.scvis, ui.scvis, ti.scvis)
phate_final <- c(gi.phate, si.phate, oi.phate, ui.phate, ti.phate)


tsne_final <- c(0.141854900, 0.201841440, 0.149000940, 0.095915271, 0.109915673, 0.106523511, 0.162684900,
                0.157283900, 0.207353900, 0.111429523, 0.097411899, 0.078778061, 0.119303398, 0.134730611, 0.090051609)

umap_final <- c(0.104803600, 0.121768500, 0.208925100, 0.204838200, 0.201894900, 0.267843500, 0.113431362,
                0.113950021, 0.115199897, 0.165977427, 0.101685280, 0.202870312, 0.113264661, 0.103078696, 0.087751114)

pca_final <- c(0.119776744, 0.108296927, 0.218657261, 0.167030220, 0.151331790, 0.113025400, 0.163757169,
               0.062467050, 0.083586324, 0.100063000, 0.252803800, 0.292954900, 0.110369415, 0.121995916, 0.151816308)

ae_final <- c(0.11645892, 0.15166588, 0.13865790, 0.04886183, 0.10283789, 0.11550292, 0.14214066, 0.12569765,
              0.13435575, 0.02886257, 0.02028851, 0.02208237, 0.12114040, 0.10198089, 0.11590640)

vae_final <- c(0.2966358, 0.2975008, 0.2897821, 0.2024452, 0.1742290, 0.1577594, 0.2759860, 0.2701253, 0.2034790,
               0.2980563, 0.2027728, 0.2900003, 0.2037686, 0.2372697, 0.2728027)

scvis_final <- c(0.101953070, 0.083206860, 0.109161620, 0.102905096, 0.073978963, 0.106527419, 0.157439000, 0.166427300,
                 0.105079500, 0.086356040, 0.070352054, 0.130401366, 0.121770730, 0.126900950, 0.135310160)

phate_final <- c(0.11851695, 0.05571954, 0.07581512, 0.14800422, 0.16581182, 0.14281790, 0.12556093, 0.08004878,
                 0.12094560, 0.01425518, 0.07468561, 0.11291267, 0.12038280, 0.20404320, 0.18636170)

Total <-mean(tsne_final)+mean(umap_final)+mean(pca_final)+ mean(ae_final)+ mean(vae_final)+
  mean(scvis_final)+mean(phate_final)
Total/7

# 1----/ 0.125771
# 2----/ 0.142781
#
final <- data.frame(tsne = tsne_final,
                    umap = umap_final,
                    pca = pca_final,
                    ae = ae_final,
                    #vae = vae_final,
                    scvis = scvis_final,
                    phate = phate_final)
#
final_summary <- data.frame(RGP=apply(final, 2, mean), 
                            standard_deviation=apply(final, 2, sd),
                            Method=colnames(final))
#
ggplot(final_summary, aes(x=Method, y=RGP, fill=Method)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("tsne" = "firebrick3",
                               "umap" = "lightgoldenrod1",
                               "pca" = "chartreuse2",
                               "ae" = "cyan1",
                               #"vae" = "deepskyblue3",
                               "scvis" =  "dodgerblue3", 
                               "phate" = "deeppink2")) + 
  geom_errorbar(aes(ymin=RGP-standard_deviation, ymax=RGP+standard_deviation), colour="black", width=.1)






##########################################################################################################################
##########################################################################################################################
##########################################################################################################################

gi.score.tsne <- (gi.tsne - mean(gi.tsne)/sd(gi.tsne))^2
gi.score.umap <- (gi.umap - mean(gi.umap)/sd(gi.umap))^2
gi.score.pca <- (gi.pca - mean(gi.pca)/sd(gi.pca))^2
gi.score.ae <- (gi.ae - mean(gi.ae)/sd(gi.ae))^2
gi.score.vae <- (gi.vae - mean(gi.vae)/sd(gi.vae))^2
gi.score.scvis <- (gi.scvis - mean(gi.scvis)/sd(gi.scvis))^2
gi.score.phate <- (gi.phate - mean(gi.phate)/sd(gi.phate))^2

gi.score.tsne <- (gi.tsne - mean(gi.tsne))/sd(gi.tsne)
gi.score.umap <- (gi.umap - mean(gi.umap))/sd(gi.umap)
gi.score.pca <- (gi.pca - mean(gi.pca))/sd(gi.pca)
gi.score.ae <- (gi.ae - mean(gi.ae))/sd(gi.ae)
gi.score.vae <- (gi.vae - mean(gi.vae))/sd(gi.vae)
gi.score.scvis <- (gi.scvis - mean(gi.scvis))/sd(gi.scvis)
gi.score.phate <- (gi.phate - mean(gi.phate))/sd(gi.phate)

si.score.tsne <- (si.tsne - mean(si.tsne)/sd(si.tsne))^2
si.score.umap <- (si.umap - mean(si.umap)/sd(si.umap))^2
si.score.pca <- (si.pca - mean(si.pca)/sd(si.pca))^2
si.score.ae <- (si.ae - mean(si.ae)/sd(si.ae))^2
si.score.vae <- (si.vae - mean(si.vae)/sd(si.vae))^2
si.score.scvis <- (si.scvis - mean(si.scvis)/sd(si.scvis))^2
si.score.phate <- (si.phate - mean(si.phate)/sd(si.phate))^2

oi.score.tsne <- (oi.tsne - mean(oi.tsne)/sd(oi.tsne))^2
oi.score.umap <- (oi.umap - mean(oi.umap)/sd(oi.umap))^2
oi.score.pca <- (oi.pca - mean(oi.pca)/sd(oi.pca))^2
oi.score.ae <- (oi.ae - mean(oi.ae)/sd(oi.ae))^2
oi.score.vae <- (oi.vae - mean(oi.vae)/sd(oi.vae))^2
oi.score.scvis <- (oi.scvis - mean(oi.scvis)/sd(oi.scvis))^2
oi.score.phate <- (oi.phate - mean(oi.phate)/sd(oi.phate))^2

ui.score.tsne <- (ui.tsne - mean(ui.tsne)/sd(ui.tsne))^2
ui.score.umap <- (ui.umap - mean(ui.umap)/sd(ui.umap))^2
ui.score.pca <- (ui.pca - mean(ui.pca)/sd(ui.pca))^2
ui.score.ae <- (ui.ae - mean(ui.ae)/sd(ui.ae))^2
ui.score.vae <- (ui.vae - mean(ui.vae)/sd(ui.vae))^2
ui.score.scvis <- (ui.scvis - mean(ui.scvis)/sd(ui.scvis))^2
ui.score.phate <- (ui.phate - mean(ui.phate)/sd(ui.phate))^2

ti.score.tsne <- (ti.tsne - mean(ti.tsne))^2/sd(ti.tsne)
ti.score.umap <- (ti.umap - mean(ti.umap))^2/sd(ti.umap)
ti.score.pca <- (ti.pca - mean(ti.pca))^2/sd(ti.pca)
ti.score.ae <- (ti.ae - mean(ti.ae))^2/sd(ti.ae)
ti.score.vae <- (ti.vae - mean(ti.vae))^2/sd(ti.vae)
ti.score.scvis <- (ti.scvis - mean(ti.scvis))^2/sd(ti.scvis)
ti.score.phate <- (ti.phate - mean(ti.phate))^2/sd(ti.phate)

ti.score.tsne <- (ti.tsne - mean(ti.tsne)/sd(ti.tsne))^2
ti.score.umap <- (ti.umap - mean(ti.umap)/sd(ti.umap))^2
ti.score.pca <- (ti.pca - mean(ti.pca)/sd(ti.pca))^2
ti.score.ae <- (ti.ae - mean(ti.ae)/sd(ti.ae))^2
ti.score.vae <- (ti.vae - mean(ti.vae)/sd(ti.vae))^2
ti.score.scvis <- (ti.scvis - mean(ti.scvis)/sd(ti.scvis))^2
ti.score.phate <- (ti.phate - mean(ti.phate)/sd(ti.phate))^2

###########################################################################################################

















head(hdi.umap.emt)
########
######## GI
metric.id < - b_Xgb
post %>% 
  ggplot(aes(x = b_Xgb, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")            

data.chain.1 <- data.frame(bm_post_tsne$fit@sim$samples[[1]]$b_Xgb[1001:2000])
colnames(data.chain.1) <- "val"
data.chain.2 <- data.frame(bm_post_tsne$fit@sim$samples[[2]]$b_Xgb[1001:2000])
colnames(data.chain.2) <- "val"
data.chain.3 <- data.frame(bm_post_tsne$fit@sim$samples[[3]]$b_Xgb[1001:2000])
colnames(data.chain.3) <- "val"
data.chain.4 <- data.frame(bm_post_tsne$fit@sim$samples[[4]]$b_Xgb[1001:2000])
colnames(data.chain.4) <- "val"
GI.tsne <- split_matrix_atitey(data.chain.1, data.chain.2, data.chain.3, data.chain.4)






##############################################################################################################




C1.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.1)[1])]
C1.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.1)[1])]
C1.out.1 <- C1.select.1(data.chain.1$val)
C1.out.2 <- C1.select.2(data.chain.1$val)
C1.hdi.1 <- C1.out.2[-which(C1.out.1%in%C1.out.2)]
C1.hdi.1 <- data.frame(C1.hdi.1)
colnames(C1.hdi.1) <- NULL

C2.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.2)[1])]
C2.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.2)[1])]
C2.out.1 <- C2.select.1(data.chain.2$val)
C2.out.2 <- C2.select.2(data.chain.2$val)
C2.hdi.1 <- C2.out.2[-which(C2.out.1%in%C2.out.2)]
C2.hdi.1 <- data.frame(C2.hdi.1)
colnames(C2.hdi.1) <- NULL

C3.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.3)[1])]
C3.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.3)[1])]
C3.out.1 <- C3.select.1(data.chain.3$val)
C3.out.2 <- C3.select.2(data.chain.3$val)
C3.hdi.1 <- C3.out.2[-which(C3.out.1%in%C3.out.2)]
C3.hdi.1 <- data.frame(C3.hdi.1)
colnames(C3.hdi.1) <- NULL

C4.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.4)[1])]
C4.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.4)[1])]
C4.out.1 <- C4.select.1(data.chain.4$val)
C4.out.2 <- C4.select.2(data.chain.4$val)
C4.hdi.1 <- C4.out.2[-which(C4.out.1%in%C4.out.2)]
C4.hdi.1 <- data.frame(C4.hdi.1)
colnames(C4.hdi.1) <- NULL

final.data <- cbind(C1.hdi.1, C2.hdi.1, C3.hdi.1, C4.hdi.1)
colnames(final.data) <- NULL
final.data <- as.matrix(final.data)

hdi.data <- c(final.data[,1], final.data[,2], final.data[,3], final.data[,4])
hdi.data <- data.frame(hdi.data)
colnames(hdi.data) <- "val"

select.1 <- function(x) x[order(x)][1:((0.025)*dim(hdi.data)[1])]
select.2 <- function(x) x[order(x)][1:((0.975)*dim(hdi.data)[1])]
out.1 <- select.1(hdi.data$val)
out.2 <- select.2(hdi.data$val)
hdi.f <- out.2[-which(out.1%in%out.2)]
hdi.f <- data.frame(hdi.f)
dim(hdi.f)

################################################################################
C1.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.1)[1])]
C1.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.1)[1])]
C1.out.1 <- C1.select.1(data.chain.1$val)
C1.out.2 <- C1.select.2(data.chain.1$val)
C1.hdi.1 <- C1.out.2[-which(C1.out.1%in%C1.out.2)]
C1.hdi.1 <- data.frame(C1.hdi.1)
colnames(C1.hdi.1) <- NULL

C2.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.2)[1])]
C2.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.2)[1])]
C2.out.1 <- C2.select.1(data.chain.2$val)
C2.out.2 <- C2.select.2(data.chain.2$val)
C2.hdi.1 <- C2.out.2[-which(C2.out.1%in%C2.out.2)]
C2.hdi.1 <- data.frame(C2.hdi.1)
colnames(C2.hdi.1) <- NULL

C3.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.3)[1])]
C3.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.3)[1])]
C3.out.1 <- C3.select.1(data.chain.3$val)
C3.out.2 <- C3.select.2(data.chain.3$val)
C3.hdi.1 <- C3.out.2[-which(C3.out.1%in%C3.out.2)]
C3.hdi.1 <- data.frame(C3.hdi.1)
colnames(C3.hdi.1) <- NULL

C4.select.1 <- function(x) x[order(x)][1:((0.025)*dim(data.chain.4)[1])]
C4.select.2 <- function(x) x[order(x)][1:((0.975)*dim(data.chain.4)[1])]
C4.out.1 <- C4.select.1(data.chain.4$val)
C4.out.2 <- C4.select.2(data.chain.4$val)
C4.hdi.1 <- C4.out.2[-which(C4.out.1%in%C4.out.2)]
C4.hdi.1 <- data.frame(C4.hdi.1)
colnames(C4.hdi.1) <- NULL

final.data <- cbind(C1.hdi.1, C2.hdi.1, C3.hdi.1, C4.hdi.1)
colnames(final.data) <- NULL
final.data <- as.matrix(final.data)

hdi.data <- c(final.data[,1], final.data[,2], final.data[,3], final.data[,4])
hdi.data <- data.frame(hdi.data)
colnames(hdi.data) <- "val"

select.1 <- function(x) x[order(x)][1:((0.025)*dim(hdi.data)[1])]
select.2 <- function(x) x[order(x)][1:((0.975)*dim(hdi.data)[1])]
out.1 <- select.1(hdi.data$val)
out.2 <- select.2(hdi.data$val)
hdi.f <- out.2[-which(out.1%in%out.2)]
hdi.f <- data.frame(hdi.f)
dim(hdi.f)

head(hdi.data)


###########################
selectq.1 <- function(x) x[order(x)][1:((0.025)*dim(AA)[1])]
selectq.2 <- function(x) x[order(x)][1:((0.975)*dim(AA)[1])]
out.1 <- selectq.1(AA$val)
out.2 <- selectq.2(AA$val)
select <- out.2[-which(out.1%in%out.2)]
###########################

########
######## OI
post %>% 
  ggplot(aes(x = b_Occupation, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")             # xgb_chain_density
#
low.value.chain.OI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Occupation[1001:2000],0.025)
high.value.chain.OI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Occupation[1001:2000],0.975)
low.value.chain.OI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Occupation[1001:2000],0.025)
high.value.chain.OI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Occupation[1001:2000],0.975)
low.value.chain.OI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Occupation[1001:2000],0.025)
high.value.chain.OI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Occupation[1001:2000],0.975)
low.value.chain.OI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Occupation[1001:2000],0.025)
high.value.chain.OI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Occupation[1001:2000],0.975)
#
hdi.OI.1 <- abs(high.value.chain.OI.1) + abs(low.value.chain.OI.1)
hdi.OI.2 <- abs(high.value.chain.OI.2) + abs(low.value.chain.OI.2)
hdi.OI.3 <- abs(high.value.chain.OI.3) + abs(low.value.chain.OI.3)
hdi.OI.4 <- abs(high.value.chain.OI.4) + abs(low.value.chain.OI.4)

hdi.OI.tsne <- c(hdi.OI.1, hdi.OI.2, hdi.OI.3, hdi.OI.3)
########
######## SI
post %>% 
  ggplot(aes(x = b_Separability, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")             # xgb_chain_density
#
low.value.chain.SI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Separability[1001:2000],0.025)
high.value.chain.SI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Separability[1001:2000],0.975)
low.value.chain.SI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Separability[1001:2000],0.025)
high.value.chain.SI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Separability[1001:2000],0.975)
low.value.chain.SI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Separability[1001:2000],0.025)
high.value.chain.SI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Separability[1001:2000],0.975)
low.value.chain.SI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Separability[1001:2000],0.025)
high.value.chain.SI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Separability[1001:2000],0.975)
#
hdi.SI.1 <- abs(high.value.chain.SI.1) + abs(low.value.chain.SI.1)
hdi.SI.2 <- abs(high.value.chain.SI.2) + abs(low.value.chain.SI.2)
hdi.SI.3 <- abs(high.value.chain.SI.3) + abs(low.value.chain.SI.3)
hdi.SI.4 <- abs(high.value.chain.SI.4) + abs(low.value.chain.SI.4)

hdi.SI.tsne <- c(hdi.SI.1, hdi.SI.2, hdi.SI.3, hdi.SI.3)
########
######## UI
post %>% 
  ggplot(aes(x = b_Uniformity, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")             # xgb_chain_density
#
low.value.chain.UI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Uniformity[1001:2000],0.025)
high.value.chain.UI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Uniformity[1001:2000],0.975)
low.value.chain.UI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Uniformity[1001:2000],0.025)
high.value.chain.UI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Uniformity[1001:2000],0.975)
low.value.chain.UI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Uniformity[1001:2000],0.025)
high.value.chain.UI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Uniformity[1001:2000],0.975)
low.value.chain.UI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Uniformity[1001:2000],0.025)
high.value.chain.UI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Uniformity[1001:2000],0.975)
#
hdi.UI.1 <- abs(high.value.chain.UI.1) + abs(low.value.chain.UI.1)
hdi.UI.2 <- abs(high.value.chain.UI.2) + abs(low.value.chain.UI.2)
hdi.UI.3 <- abs(high.value.chain.UI.3) + abs(low.value.chain.UI.3)
hdi.UI.4 <- abs(high.value.chain.UI.4) + abs(low.value.chain.UI.4)

hdi.UI.tsne <- c(hdi.UI.1, hdi.UI.2, hdi.UI.3, hdi.UI.3)

########
######## TI
post %>% 
  ggplot(aes(x = b_Time_order, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")             # xgb_chain_density
#
low.value.chain.TI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Time_order[1001:2000],0.025)
high.value.chain.TI.1 <- quantile(bm_post_tsne$fit@sim$samples[[1]]$b_Time_order[1001:2000],0.975)
low.value.chain.TI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Time_order[1001:2000],0.025)
high.value.chain.TI.2 <- quantile(bm_post_tsne$fit@sim$samples[[2]]$b_Time_order[1001:2000],0.975)
low.value.chain.TI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Time_order[1001:2000],0.025)
high.value.chain.TI.3 <- quantile(bm_post_tsne$fit@sim$samples[[3]]$b_Time_order[1001:2000],0.975)
low.value.chain.TI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Time_order[1001:2000],0.025)
high.value.chain.TI.4 <- quantile(bm_post_tsne$fit@sim$samples[[4]]$b_Time_order[1001:2000],0.975)
#
hdi.TI.1 <- abs(high.value.chain.TI.1) + abs(low.value.chain.TI.1)
hdi.TI.2 <- abs(high.value.chain.TI.2) + abs(low.value.chain.TI.2)
hdi.TI.3 <- abs(high.value.chain.TI.3) + abs(low.value.chain.TI.3)
hdi.TI.4 <- abs(high.value.chain.TI.4) + abs(low.value.chain.TI.4)

hdi.TI.tsne <- c(hdi.TI.1, hdi.TI.2, hdi.TI.3, hdi.TI.3)

################################################################################
################################################################################
################################################################################ posterior plot
plot(bm_post_tsne)
plot(bm_post_umap)
plot(bm_post_pca)
plot(bm_post_ae)
plot(bm_post_vae)
plot(bm_post_scvis)
plot(bm_post_phate)

################# conditional plot
cond_eff_xgb_tsne <- conditional_effects(bm_post_tsne, "Xgb", resp = "Accuracy")
cond_eff_sep_tsne <- conditional_effects(bm_post_tsne, "Separability", resp = "Accuracy")
cond_eff_occ_tsne <- conditional_effects(bm_post_tsne, "Occupation", resp = "Accuracy")
cond_eff_uni_tsne <- conditional_effects(bm_post_tsne, "Uniformity", resp = "Accuracy")
cond_eff_str_tsne <- conditional_effects(bm_post_tsne, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_umap <- conditional_effects(bm_post_umap, "Xgb", resp = "Accuracy")
cond_eff_sep_umap <- conditional_effects(bm_post_umap, "Separability", resp = "Accuracy")
cond_eff_occ_umap <- conditional_effects(bm_post_umap, "Occupation", resp = "Accuracy")
cond_eff_uni_umap <- conditional_effects(bm_post_umap, "Uniformity", resp = "Accuracy")
cond_eff_str_umap <- conditional_effects(bm_post_umap, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_pca <- conditional_effects(bm_post_pca, "Xgb", resp = "Accuracy")
cond_eff_sep_pca <- conditional_effects(bm_post_pca, "Separability", resp = "Accuracy")
cond_eff_occ_pca <- conditional_effects(bm_post_pca, "Occupation", resp = "Accuracy")
cond_eff_uni_pca <- conditional_effects(bm_post_pca, "Uniformity", resp = "Accuracy")
cond_eff_str_pca <- conditional_effects(bm_post_pca, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_ae <- conditional_effects(bm_post_ae, "Xgb", resp = "Accuracy")
cond_eff_sep_ae <- conditional_effects(bm_post_ae, "Separability", resp = "Accuracy")
cond_eff_occ_ae <- conditional_effects(bm_post_ae, "Occupation", resp = "Accuracy")
cond_eff_uni_ae <- conditional_effects(bm_post_ae, "Uniformity", resp = "Accuracy")
cond_eff_str_ae <- conditional_effects(bm_post_ae, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_vae <- conditional_effects(bm_post_vae, "Xgb", resp = "Accuracy")
cond_eff_sep_vae <- conditional_effects(bm_post_vae, "Separability", resp = "Accuracy")
cond_eff_occ_vae <- conditional_effects(bm_post_vae, "Occupation", resp = "Accuracy")
cond_eff_uni_vae <- conditional_effects(bm_post_vae, "Uniformity", resp = "Accuracy")
cond_eff_str_vae <- conditional_effects(bm_post_vae, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_scvis <- conditional_effects(bm_post_scvis, "Xgb", resp = "Accuracy")
cond_eff_sep_scvis <- conditional_effects(bm_post_scvis, "Separability", resp = "Accuracy")
cond_eff_occ_scvis <- conditional_effects(bm_post_scvis, "Occupation", resp = "Accuracy")
cond_eff_uni_scvis <- conditional_effects(bm_post_scvis, "Uniformity", resp = "Accuracy")
cond_eff_str_scvis <- conditional_effects(bm_post_scvis, "Time_order", resp = "Accuracy")
#
cond_eff_xgb_phate <- conditional_effects(bm_post_phate, "Xgb", resp = "Accuracy")
cond_eff_sep_phate <- conditional_effects(bm_post_phate, "Separability", resp = "Accuracy")
cond_eff_occ_phate <- conditional_effects(bm_post_phate, "Occupation", resp = "Accuracy")
cond_eff_uni_phate <- conditional_effects(bm_post_phate, "Uniformity", resp = "Accuracy")
cond_eff_str_phate <- conditional_effects(bm_post_phate, "Time_order", resp = "Accuracy")

################################################################################
################################################################################
################################################################################  MCMC representativeness
warmups <- c(bm_post_tsne$fit@sim$samples[[1]]$b_Xgb[1:2000],
             bm_post_tsne$fit@sim$samples[[2]]$b_Xgb[1:2000],
             bm_post_tsne$fit@sim$samples[[3]]$b_Xgb[1:2000],
             bm_post_tsne$fit@sim$samples[[4]]$b_Xgb[1:2000]) %>%
             as.data.frame() %>% # since these come from lists, here we'll convert them to a data frame
             rename(b_xgb_tsne = ".") %>% # we'll need to recapture the iteration and chain information
             mutate(iter  = rep(1:2000, times = 4),
                    chain = factor(rep(1:4, each = 2000), 
                    levels = c("1", "2", "3","4")))
warmups %>% 
  head()
mcmc_trace(warmups, pars = "b_xgb_tsne")

###########################################
library("ggmcmc")

ggs(bm_post_tsne) %>%
  filter(Iteration < 2001 &
           Parameter == "b_xgb_umap") %>% 
  mutate(chain = factor(Chain)) %>% 
  ggplot(aes(x = Iteration, y = value, color = chain)) +
  geom_line() +
  scale_colour_brewer(direction = -1) +
  labs(title = "My custom trace plots with warmups via ggmcmc::ggs()",
       x = NULL, y = NULL) +
  theme_cowplot(font_size = 12)
# the posterior distribution is got at the 100 iteration
########################################### autocorelation
## Autocorrelation for randomness checking
mcmc_acf(warmups, pars = "b_xgb_tsne", lags = 25)

mcmc_acf(warmups)$data %>% 
  as_tibble() %>% 
  filter(Parameter == "b_xgb_tsne") %>% 
  ggplot(aes(x = Lag, y = AC,
             color = Chain %>% as.factor())) +
  geom_hline(yintercept = 0, color = "white") +
  geom_point(size = 2/3) +
  geom_line() +
  scale_colour_brewer(direction = -1) +
  ylab("Autocorrelation") +
  theme_cowplot() +
  theme(legend.position = "none")
########################################### overlaid densities
mcmc_dens_overlay(warmups, pars = c("b_xgb_tsne"))
# The densities aren’t great, but they still appear nicer than those in for the
# burn-in iterations in the text. With our warmups in their current state, 
# I’m not aware how we might conveniently make a shrink factor plot
################################################################################
################################################################################
################################################################################ posterior analysis
post <- posterior_samples(bm_post_tsne, add_chain = T)

### mcmc
mcmc_trace(post, pars = "b_Xgb")       # xgb_chain_sampling

### mcmc autocorelation
mcmc_acf(post, pars = "b_Xgb", lags = 40)   # xgb_autocorelation
# As with the warmups, above, the post-warmup autocorrelation plots indicate 
# substantially lower autocorrelations yielded by HMC

### overlaid densities
mcmc_dens_overlay(post, pars = c("b_Xgb"))        # xgb_density

### shrink factor
bm_post_tsne_a <- as.mcmc(bm_post_tsne)
bm_post_tsne_a %>% glimpse()
coda::gelman.plot(bm_post_tsne_a[, "b_Xgb", ])      # xgb_SF

### density
library("tidybayes")
library("patchwork")
library("cowplot")
post %>% 
  ggplot(aes(x = b_Xgb, y = chain, fill = chain)) +
  stat_halfeye(point_interval = mode_hdi,
               .width = .95) +
  scale_fill_brewer(direction = -1) +
  scale_y_discrete(expand = expansion(mult = 0.025)) +
  theme_cowplot() +
  theme(legend.position = "none")             # xgb_chain_density

################################################################################
################################################################################
################################################################################ MCMC accuracy
lagged_post <-
  post %>% 
  filter(chain == 1) %>% 
  select(b_Xgb, iter) %>% 
  rename(xgb = b_Xgb) %>% 
  mutate(lag_1  = lag(xgb, 1),
         lag_5  = lag(xgb, 5),
         lag_10 = lag(xgb, 10),
         lag_15 = lag(xgb, 15)) %>% 
  pivot_longer(-iter,
               names_to = "key") 

p1 <-
  lagged_post %>% 
  filter(key %in% c("xgb", "lag_1"),
         iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = iter, y = value, color = key)) +
  geom_point() +
  geom_line() +
  scale_color_manual(values = c("black", "steelblue")) +
  labs(x = "Index 1001:1071",
       title = "Lag 1")

p2 <-
  lagged_post %>% 
  filter(key %in% c("xgb", "lag_5"),
         iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = iter, y = value, color = key)) +
  geom_point() +
  geom_line() +
  scale_color_manual(values = c("black", "steelblue")) +
  labs(x = "Index 1001:1071",
       title = "Lag 5")

p3 <-
  lagged_post %>% 
  filter(key %in% c("xgb", "lag_10"),
         iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = iter, y = value, color = key)) +
  geom_point() +
  geom_line() +
  scale_color_manual(values = c("black", "steelblue")) +
  labs(x = "Index 1001:1071",
       title = "Lag 10")

p4 <-
  lagged_post %>% 
  filter(key %in% c("xgb", "lag_15"),
         iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = iter, y = value, color = key)) +
  geom_point() +
  geom_line() +
  scale_color_manual(values = c("black", "steelblue")) +
  labs(x = "Index 1001:1071",
       title = "Lag 15")

library(patchwork)

(p1 + p2 + p3 + p4) &
  theme_cowplot() &
  theme(legend.position = "none")        # xgb_accuracy_1

###########

lagged_post_wide <-
  lagged_post %>% 
  spread(key = key, value = value)

p1 <-
  lagged_post_wide %>% 
  filter(iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = lag_1, y = xgb)) +
  stat_smooth(method = "lm") +
  geom_point()

p2 <-
  lagged_post_wide %>% 
  filter(iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = lag_5, y = xgb)) +
  stat_smooth(method = "lm") +
  geom_point()

p3 <-
  lagged_post_wide %>% 
  filter(iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = lag_10, y = xgb)) +
  stat_smooth(method = "lm") +
  geom_point()

p4 <-
  lagged_post_wide %>% 
  filter(iter > 1000 & iter < 1071) %>% 
  
  ggplot(aes(x = lag_15, y = xgb)) +
  stat_smooth(method = "lm") +
  geom_point()

(p1 + p2 + p3 + p4) &                      # xgb_accuracy_2
  theme_cowplot()






