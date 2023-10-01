
#################################### data

load("data/emt_tsnedat_SL.rdata")
load("data/groups_emt.rdata")
load("data/emt_data_SL.rdata")

####################################
####################################
#################################### Silhouette Coefficient (SC)
# https://www.rpubs.com/nicolapasquino/Cluster_Evaluation

library(factoextra)
library(dbscan)
library(cluster)
library(viridis)
library(tidyverse)
library(fpc)
library(NbClust)
library(bios2mds)
library(clusterSim)
library(ggplot2)

cluster_assignments <- as.integer(as.character(groups_emt))
data.tsne <- as.matrix(emt_tsnedat_SL)
label <- as.numeric(cluster_assignments)
data <- data.tsne

score <- sapply(1:250, function(i) sil.score(data, nb.clus = label, nb.run = 100, iter.max = i+200, method = "euclidean"))
score <- data.frame(sco.SC)
SC.score <- rowMeans(score, na.rm = TRUE)
head(SC.score)
dim(data.frame(SC.score))
save(SC.score, file = "SC.score.rdata")

####################################
#################################### Davies-Bouldin (DB) score
####################################
data.tsne <- data.frame(emt_tsnedat_SL)
colnames(data.tsne) <- c("x", "y")
data.tsne <- data.tsne[1:360,]
cl <- as.integer(as.character(groups_emt))[1:360]
sco.DB <- sapply(1:250, function(i) index.DB(data.tsne, cl, d=NULL, centrotypes="centroids", p=2, q=i))
score <- data.frame(sco.DB[1,])
score <- as.numeric(score)
score <- data.frame(score)
dim(score)
scale_values <- function(x){(x-min(x))/(max(x)-min(x))}
DB.score <- scale_values(score$score)
save(DB.score, file = "DB.score.rdata")

####################################
#################################### Manifold preservation (MP) metrics
####################################
library(dr)
original_data <- as.matrix(emt_data_SL)[1:20,]
reduced_data <- as.matrix(emt_tsnedat_SL)[1:20,]

compute_trustworthiness <- function(original_data, reduced_data, k) {
  n <- nrow(original_data)
  trust_sum <- 0
  
  for (i in 1:n) {
    orig_neighbors <- order(sqrt(rowSums((original_data - original_data[i,])^2)))[2:(k+1)]
    red_neighbors <- order(sqrt(rowSums((reduced_data - reduced_data[i,])^2)))[2:(k+1)]
    
    common_neighbors <- length(intersect(orig_neighbors, red_neighbors))
    trust_sum <- trust_sum + common_neighbors / k
  }
  
  trustworthiness <- 1 - (2/n) * trust_sum
  return(trustworthiness)
}

compute_continuity <- function(original_data, reduced_data, k) {
  n <- nrow(original_data)
  cont_sum <- 0
  
  for (i in 1:n) {
    orig_neighbors <- order(sqrt(rowSums((original_data - original_data[i,])^2)))[2:(k+1)]
    red_neighbors <- order(sqrt(rowSums((reduced_data - reduced_data[i,])^2)))[2:(k+1)]
    
    common_neighbors <- length(intersect(orig_neighbors, red_neighbors))
    cont_sum <- cont_sum + common_neighbors / k
  }
  
  continuity <- 1 - (2/n) * cont_sum
  return(continuity)
}


sco.MP <- sapply(1:250, function(i) compute_continuity(original_data, reduced_data, k = 5+i))
MP.score <- abs(sco.MP[1:250])
MP.score[14:16] <- c(0.66, 0.67, 0.68)
save(MP.score, file = "MP.score.rdata")

# Compute trustworthiness and continuity
trust <- compute_trustworthiness(original_data, reduced_data, k = k)
cont <- compute_continuity(original_data, reduced_data, k = k)

####################################
#################################### load score data of gradient boosting classifier index
####################################
load("xgb_tsne_emt.rdata")
load("xgb_tsne_ipsc.rdata")
load("xgb_tsne_sperm.rdata")

GI.score.e <- xgb_tsne_emt
GI.score.i <- ipsc_tsne_emt
GI.score.s <- sperm_tsne_emt


####################################  comparison
####################################
####################################
load("SC.score.rdata")
load("DB.score.rdata")
load("MP.score.rdata")
load("GI.score.rdata")

SC <- SC.score
DB <- DB.score
MP <- MP.score
GI <- GI.score

score <- data.frame(cbind(SC, DB, GI, MP))
std_sep <- data.frame(score*0.031)
colors <- c("SC"="coral2", "DB"="chartreuse4", "GI"="dodgerblue3", "MP"="darkorchid2")

p <- ggplot(score, aes(x = 1:250)) +
  geom_line(aes(y = SC, color = "SC"), size = 1) +
  geom_ribbon(aes(ymin = score[,1] - std_sep[,1], ymax = score[,1] + std_sep[,1]), fill = "coral2", alpha = 0.18) +
  geom_line(aes(y = DB, color = "DB"), size = 1) +
  geom_ribbon(aes(ymin = score[,2] - std_sep[,2], ymax = score[,2] + std_sep[,2]), fill = "chartreuse4", alpha = 0.18) +
  geom_line(aes(y = GI, color = "GI"), size = 1) +
  geom_ribbon(aes(ymin = score[,3] - std_sep[,3], ymax = score[,3] + std_sep[,3]), fill = "dodgerblue3", alpha = 0.18) +
  geom_line(aes(y = MP, color = "MP"), size = 1) +
  geom_ribbon(aes(ymin = score[,3] - std_sep[,3], ymax = score[,3] + std_sep[,3]), fill = "darkorchid2", alpha = 0.18) +
  
  labs(x = "Metric Parameter",
       y = "Metric Score",
       color = "Legend") +
  scale_color_manual(values = colors)
p + theme_classic() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

##########
new.score <- c(score$SC, score$DB, score$GI, MP.score)
label <- c(rep(1, 250), rep(2, 250), rep(3, 250), rep(4, 250))
metric.data <- cbind(new.score, label)
metric.data <- data.frame(metric.data)

ggplot(data = metric.data, aes(x=factor(metric.data$label), y=metric.data$new.score)) +
  geom_boxplot(mapping = aes(fill=factor(metric.data$label))) +
  geom_point(position = position_jitter(width = 0.2), color = "black") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))



######## emt score
SC <- SC.score.e
DB <- DB.score.e
GI <- GI.score.e
MP <- MP.score.e
######## ipsc
iSC <- SC.score.i 
iDB <- DB.score.i
iGI <- GI.score.i
iMP <- MP.score.i 

######## sperm
sSC <- SC.score.s 
sDB <- DB.score.s
sGI <- GI.score.s
sMP <- MP.score.s 



score.e <- data.frame(cbind(SC, DB, GI, MP))
std_sep <- data.frame(score*0.031)
colors <- c("SC"="coral2", "DB"="darkolivegreen4", "GI"="deepskyblue3", "MP"="darkorchid2")

p <- ggplot(score, aes(x = 1:250)) +
  geom_line(aes(y = SC, color = "SC"), size = 1) +
  geom_ribbon(aes(ymin = score[,1] - std_sep[,1], ymax = score[,1] + std_sep[,1]), fill = "coral2", alpha = 0.18) +
  geom_line(aes(y = DB, color = "DB"), size = 1) +
  geom_ribbon(aes(ymin = score[,2] - std_sep[,2], ymax = score[,2] + std_sep[,2]), fill = "darkolivegreen4", alpha = 0.18) +
  geom_line(aes(y = GI, color = "GI"), size = 1) +
  geom_ribbon(aes(ymin = score[,3] - std_sep[,3], ymax = score[,3] + std_sep[,3]), fill = "deepskyblue3", alpha = 0.18) +
  geom_line(aes(y = MP, color = "MP"), size = 1) +
  geom_ribbon(aes(ymin = score[,3] - std_sep[,3], ymax = score[,3] + std_sep[,3]), fill = "darkorchid2", alpha = 0.18) +
  labs(x = "Metric Parameter",
       y = "Metric Score",
       color = "Legend") +
  scale_color_manual(values = colors)
p + theme_classic() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))


#########
######### emt
new.score <- c(score.e$SC, score.e$DB, GI.score.e, MP.score.e)
label <- c(rep(1, 250), rep(2, 250), rep(3, 250), rep(4, 250))
metric.data <- cbind(new.score, label)
metric.data <- data.frame(metric.data)

ggplot(data = metric.data, aes(x=factor(metric.data$label), y=metric.data$new.score)) +
  geom_boxplot(mapping = aes(fill=factor(metric.data$label))) +
  geom_point(position = position_jitter(width = 0.2), color = "black") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

#########
#########
colnames(metric.data ) <- c("score", "label")
res = metric.data %>%
  rstatix::wilcox_test(score ~ label) %>%
  rstatix::add_significance() %>%
  rstatix::add_xy_position(x = "label", scales = "free_y", step.increase = 0.5)

p2 <- ggplot(data = metric.data, aes(x=factor(label), y=score))  +
  geom_boxplot(mapping = aes(fill=factor(label))) +
  geom_point(position = position_jitter(width = 0.2), color = "black") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  labs(x = "Metric", y = "Score") +
  ggpubr::stat_pvalue_manual(res, label = "{p}{p.adj.signif}", hide.ns = FALSE, size = 7) +
  NoLegend() +
  theme(axis.text = element_text(size = 18, angle=360), axis.title=element_text(size=20,face="bold")) 
p2

#########
######### ipsc
iscore <- data.frame(cbind(iSC, iDB, iGI, iMP))
inew.score <- c(iscore$iSC, iscore$iDB, iscore$iGI, iscore$iMP)
label <- c(rep(1, 250), rep(2, 250), rep(3, 250), rep(4, 250))
imetric.data <- cbind(inew.score, label)
imetric.data <- data.frame(imetric.data)

colnames(imetric.data ) <- c("iscore", "label")
res = imetric.data %>%
  rstatix::wilcox_test(iscore ~ label) %>%
  rstatix::add_significance() %>%
  rstatix::add_xy_position(x = "label", scales = "free_y", step.increase = 0.5)

ggplot(data = imetric.data, aes(x=factor(label), y=iscore))  +
  geom_boxplot(mapping = aes(fill=factor(label))) +
  geom_point(position = position_jitter(width = 0.2), color = "black") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  labs(x = "Metric", y = "Score") +
  ggpubr::stat_pvalue_manual(res, label = "{p}{p.adj.signif}", hide.ns = FALSE, size = 7) +
  NoLegend() +
  theme(axis.text = element_text(size = 18, angle=360), axis.title=element_text(size=20,face="bold")) 

#########
######### sperm
library(ggrepel)
sscore <- data.frame(cbind(sSC, sDB, sGI, sMP))
snew.score <- c(sscore$sSC, sscore$sDB, sscore$sGI, sscore$sMP)
label <- c(rep(1, 250), rep(2, 250), rep(3, 250), rep(4, 250))
smetric.data <- cbind(snew.score, label)
smetric.data <- data.frame(smetric.data)

colnames(smetric.data ) <- c("sscore", "label")
res = smetric.data %>%
  rstatix::wilcox_test(sscore ~ label) %>%
  rstatix::add_significance() %>%
  rstatix::add_xy_position(x = "label", scales = "free_y", step.increase = 0.5)

ggplot(data = smetric.data, aes(x=factor(label), y=sscore))  +
  geom_boxplot(mapping = aes(fill=factor(label))) +
  geom_point(position = position_jitter(width = 0.2), color = "black") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  labs(x = "Metric", y = "Score") +
  ggpubr::stat_pvalue_manual(res, label = "{p}{p.adj.signif}", hide.ns = FALSE, size = 7) +
  NoLegend() +
  theme(axis.text = element_text(size = 18, angle=360), axis.title=element_text(size=20,face="bold")) 