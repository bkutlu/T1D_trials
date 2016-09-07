# FactoMineR demo
library(FactoMineR)

data("decathlon")
# inspecting the data
library(gplots);
library(RColorBrewer);
heatmap.2(cor(decathlon[,1:10]),
          Rowv=TRUE, #no row dendrogram
          Colv=TRUE, #no col dendrogram,
          scale="none", breaks=6,  density.info="none", 
          trace="none",col=brewer.pal(5,"Blues"));

#  

res.pca <- PCA(decathlon, quanti.sup = 11:12, quali.sup = 13)
# By default, the PCA function gives two graphs, one for the variables and one for the individuals.
# individuals can be colored accroding a categorical var
# supplementary variable plotted in blue
plot(res.pca, habillage = 13)

# barplot of eigenvalues 
barplot(res.pca$eig[,1], main = "Eigenvalues", names.arg = paste("Dim", 1:nrow(res.pca$eig), sep = ""))
# plot PC3 and PC4, lim.cos.var - all the variables having a quality of projection greater than 0
plot(res.pca, choix = "var", axes = c(3, 4), lim.cos2.var = 0)

# Results are given for the individuals, the active variables, the quantitative and categorical supplementary variables
print(res.pca)
dimdesc(res.pca, proba = 0.2)
# The variable which describe the best the first dimension is the Points variable (it was a supplementary
# variable), and then, it is the X100m variable which is negatively correlated with the dimension
# (the individuals who have a great coordinate on the first axis have a low X100m time). The
# rst dimension is then described by the categorical variable Competition. The Olympic
# Game category has a coordinate significantly greater than 0 showing that the athletes of this
# competition have greater coordinates than 0 on the first axis. Since, the variable Points is
# highly correlated with this axis (the correlation is positive), the athletes for this competition
# made better performances.

?CA
?MFA





