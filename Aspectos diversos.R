# Diretório de Trabalho

setwd("C:\\Users\\nelzi\\OneDrive\\Área de Trabalho\\R")


# Tipo do objeto
class(iris)

#salvar um objeto
iristeste = iris

#salva
save(iristeste,file="iristeste.Rdata")

#remove do R
rm(iristeste)

# testa a remoção
iristeste

#carrega o objeto do disco
load(file = "iristeste.Rdata")
#testa
iristeste

# Vetor e Gráfico básico
x = c(12,34,56,79)
y = c(1,6,9,14)
plot(x,y)
