#Gráficos Basicos Boxplot

boxplot(trees$Volume, main="Arvores",xlab="Volume")
boxplot(trees$Volume, main="Arvores",xlab="Volume",col = "blue",horizontal = TRUE)
boxplot(trees$Volume, main="Arvores",xlab="Volume",col ="blue",outline = F)

# notch 
boxplot(trees$Height, main="Arvores", xlab ="Altura",col = 'blue', notch = TRUE)
#dados do grafico
boxplot.stats(trees$Height)
#le apenas uma informação
boxplot.stats(trees$Height)$stats

#Vários graficos
boxplot(trees)


#Agregação
InsectSprays
