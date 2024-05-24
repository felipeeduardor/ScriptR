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
spray = aggregate(.~spray,data = InsectSprays,sum)
spray

#Grafico de barras
# Executar com ctrl+ shift+enter
barplot(spray$count,col=gray.colors(6), xlab = "spray",ylab = "Total",names.arg = spray$spray)
box()

#Gráfico de Setor - pizza

pie(spray$count, labels = spray$spray, main = "Spray",col = c(1:6))


# pizza com legenda
pie(spray$count,labels = NA, main = "Spray",col =c(1:6))
legend('bottomright',legend = spray$spray,cex = 1,fill = c(1:6))
