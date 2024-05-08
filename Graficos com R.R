# Histograma
#Graficos basicos

hist(trees$Height)
hist(trees$Height, main = "Arvores",ylab = "Frequência",xlab = "Altura", col = "blue")
hist(trees$Height, main = "Arvores",ylab = "Frequência",xlab = "Altura", col = "blue",
     density = 20,breaks = 20)

# Densidade
densidade = density(trees$Height)
plot(densidade)


#Densidade sobre Histograma, parâmetro par
#Executar com ctrl+shift+enter
hist(trees$Height, main = NULL, xlab = NULL)
par(new=TRUE)
plot(densidade)

# Dispersão
plot(trees$Girth,trees$Volume)
plot(trees$Girth,trees$Volume, main = "Arvores")
plot(trees$Girth,trees$Volume,ylab = "Cirunferência",xlab = "Volume",col="blue",main = "Arvores")

#pch muda o elemento gráfico
plot(trees$Girth, trees$Volume, ylab = "cirunferência",xlab = "Volume",col="blue",main = "Arvores",pch=20)


# Muda tipo
plot(trees$Girth, trees$Volume, ylab = "cirunferência",xlab = 'Volume',col="blue",main = "Arvores",pch=20, type = "l")
