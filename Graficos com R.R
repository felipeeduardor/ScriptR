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
plot(trees$Girth, trees$Volume, ylab = "cirunferência",xlab = "Volume",col="blue",main = "Arvores",pch=20)# Muda tipo
plot(trees$Girth, trees$Volume, ylab = "cirunferência",xlab = 'Volume',col="blue",main = "Arvores",pch=20, type = "l")


#Tremulação, diminui sobre posição
plot(jitter(trees$Girth), trees$Volume, ylab = "Cirunferência", xlab = "Volume",col='blue',main = "Arvores")



#Legenda com dimensão categórica
CO2

plot(CO2$conc,CO2$uptake,pch=20, col=CO2$Treatment)
legend("bottomright",legend=c("nonchilled","chilled"),cex = 1,fill = c("black","red"))


#novo dados
plot(trees)

#Divisão da tela
#Executar com crtl+shift+enter
split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)