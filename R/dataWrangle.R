# INS 4074 trial merged data
library(readxl)
library(tibble)
library(dplyr)
ins4074 <- read_excel(path = 'data/Complete_Unblinded_2016-08-25_INS4074.xlsx')

dim(ins4074)
sum(is.na(ins4074$T1D))
# 54 excluded from further study
ins4074Cl <- ins4074[!is.na(ins4074$T1D),]

library(FactoMineR)

library(gplots);
library(RColorBrewer);
heatmap.2(cor(ins4074Cl[,grep('Total', colnames(ins4074Cl))]),
          Rowv=TRUE, #no row dendrogram
          Colv=TRUE, #no col dendrogram,
          scale="none",  density.info="none", 
          trace="none",col=redblue(36))




