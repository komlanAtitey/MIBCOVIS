

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


################################################################################ hdi data


######################################## GI data
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


gi.data.emt <- cbind(gi.score.tsne.emt, gi.score.umap.emt, gi.score.pca.emt, gi.score.ae.emt,
                     gi.score.vae.emt, gi.score.scvis.emt, gi.score.phate.emt)

save(gi.data.emt, file = "gi.data.emt.rdata")

######################################## SI data
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

si.data.emt <- cbind(si.score.tsne.emt, si.score.umap.emt, si.score.pca.emt, si.score.ae.emt,
                     si.score.vae.emt, si.score.scvis.emt, si.score.phate.emt)

save(si.data.emt, file = "si.data.emt.rdata")

######################################## OI data
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

oi.data.emt <- cbind(oi.score.tsne.emt, oi.score.umap.emt, oi.score.pca.emt, oi.score.ae.emt,
                     oi.score.vae.emt, oi.score.scvis.emt, oi.score.phate.emt)

save(oi.data.emt, file = "oi.data.emt.rdata")

######################################## UI data
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

ui.data.emt <- cbind(ui.score.tsne.emt, ui.score.umap.emt, ui.score.pca.emt, ui.score.ae.emt,
                     ui.score.vae.emt, ui.score.scvis.emt, ui.score.phate.emt)

save(ui.data.emt, file = "ui.data.emt.rdata")

######################################## TI data
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

ti.data.emt <- cbind(ti.score.tsne.emt, ti.score.umap.emt, ti.score.pca.emt, ti.score.ae.emt,
                     ti.score.vae.emt, ti.score.scvis.emt, ti.score.phate.emt)

save(ti.data.emt, file = "ti.data.emt.rdata")

################################################################################
################################################################################ GI plot
load("gi.data.emt.rdata")

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




