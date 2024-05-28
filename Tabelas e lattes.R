install.packages("stargazer")
library(stargazer)

# formato Latex 
stargazer(iris)

#Html
stargazer(iris,type = "html")

#Texto
stargazer(iris,type = "text")

#salva em disco
stargazer(women, out = "women.tex",summary = FALSE)



#pacote
library(lattice)
   
# boxplot
bwplot(trees$Volume)
bwplot(trees$Volume, main="Arvores",xlab ="volume")

# histograma 
# aspecto é a proporção, nint número de quebras, type: percent, count, density

histogram(trees$Volume, main="Arvores",xlab = "Volume",aspect=1, type= "percent",nint=20)


# histograma condicional
# peso das galinhas de acordo com alimentação
chickwts
#histograma
histogram(chickwts$weight)
#agregamos dados
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)
#histograma condicional
histogram( ~weight | feed, data=chickwts)

#Gráfico de dispersão condicional 
#co2, seis plantas em dois locais, refrigeradas ou não durante a noite
# co2, conc: concentração de co2, uptake: captação de co2
co2
xyplot(CO2$conc ~ CO2$uptake)
#type é a origem 
xyplot(CO2$conc ~ CO2$uptake | CO2$Type)
#regrigerado ou não 
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment)
