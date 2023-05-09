################################################################################ tsne density plot

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

################################################################################ umap density plot
post <- posterior_samples(bm_post_umap, add_chain = T)

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

################################################################################ pca density plot
post <- posterior_samples(bm_post_pca, add_chain = T)

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

################################################################################ ae density plot
post <- posterior_samples(bm_post_ae, add_chain = T)

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

################################################################################ scvis density plot
post <- posterior_samples(bm_post_scvis, add_chain = T)

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

################################################################################ phate density plot
post <- posterior_samples(bm_post_phate, add_chain = T)

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


