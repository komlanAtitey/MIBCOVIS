## We selected six most used dimensionalitry reduction methods (DRMs): tSNE, UMAP,  PCA, Autoencoder (AE), SCVIS,  PHATE.

## We evaluate MIBCOVIS using three datasets to investigate dynamic biological processes: 

**Dataset 1: Epithelial-to-mesenchymal transition (EMT).**
Hence, 96,000 single-cell data were collected for 20 days after in-vitro stimulation of lung cancer cell lines with TGF-β for 10 days, followed by TGF-β withdrawal for another subsequent 10 days. The dataset consists of 8 EMT-MET states: E1 (2), E2 (1), E3 (4), pEMT1(3), pEMT2 (5), pEMT3 (6), M (7) and pMET (8) validated using 6 canonical EMT markers.

**Dataset 2: Chemically induced pluripotent stem cells (iPSCs).** 
It comprises 50,000 cells collected from 12 time points over 21 days, investigating pluripotency using chemically induced cellular reprogramming. Each cell is associated with one of 19 labeled clusters  derived from 102 significant genes36.

**Dataset 3: Spermatogenesis.**
It includes approximately 110,000 cells from 16 postnatal stages during spermatogenesis. These cells are associated with 29 clusters derived from 174 significant genes driving spermatogenesis35. 


## Output data of the DRMs

**emt_aedat_SL** is the output data of using the autoencoder (AE) method to reduce the emt single-cell data through supervised learning (SL).

**emt_pcadat_SL** is the output data of using the tsne method to reduce the emt single-cell data through supervised learning (SL)

**emt_phatedat_SL** is the output data of using the phate method to reduce the emt single-cell data through supervised learning (SL)

**emt_scvisdat_SL** is the output data of using the scvis method to reduce the emt single-cell data through supervised learning (SL)

**emt_tsnedat_SL** is the output data of using the tsne method to reduce the emt single-cell data through supervised learning (SL)

**emt_umapdat_SL** is the output data of using the umap method to reduce the emt single-cell data through supervised learning (SL)


## data identifying the population of clusters

**groups_emt** for the emt data SL 

