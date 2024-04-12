# Vetores

x = c(1,2,3,4,5,6) |
x  
x[1]
x[1]=10
x[1]

# vetores de outro tipos

y = c("a","b","c","d")
y
z = c(1L,2L,3L)
z
  

# Matrizes
VADeaths
colnames(VADeaths)
rownames(VADeaths)

# so coluna 1
VADeaths[,1]

#so linha 1
VADeaths[1,]

#linhas 1 até 3
VADeaths[1:3,]


# Data Frame
longley
#funciona como matriz
longley[,1:3]
#acessar coluna com S
longley$Unemployed
#ou nome
longley['Unemployed']



# Listas
ability.cov
#acessando elementos
ability.cov$cov
ability.cov[1]
# Verificando que são 0bjetos diferentes
class(ability.cov$cov)
class(ability.cov$center)
#acesando elemento dentro da lista
ability.cov$cov[,1:3]


# fatores
state.region
