# Criar novas variáveis

setwd("C:\\Users\\nelzi\\OneDrive\\Área de Trabalho\\R")

# Base de dados com carros da tabela fipe em junho de 2018
df <-read.csv("C:\\Users\\nelzi\\OneDrive\\Área de Trabalho\\R\\FipeTransforman.csv",header=TRUE,encoding="UTF-8")

View(df)

levels(df$Carro)

# coluna com cilindradas
library(stringr)
?str_extract

df$Cilindradas <- str_extract(df$Carro, "[0-9]\\.[0-9]")
str(df$Cilindradas)

df$Cilindradas <- as.factor(df$Cilindradas)
str(df$Cilindradas)
summary(df$Cilindradas)


# verificar linhas NA
unique(df$Carro[is.na(df$Cilindradas)])

library(dplyr)

df %>%
  filter(is.na(Cilindradas)) %>%
  distinct(Carro)

# coluna tipo de câmbio
?str_detect
?subset


aut <-subset(df,str_detect(df$Carro, "Aut\\."),"Carro")
aut <-unique(aut)
aut$Cambio <- "aut"

View(aut)

?left_join


df <- left_join(df,aut)
df$Cambio[is.na(df$Cambio)] <- "Mec"
str(df$Cambio)

df$Cambio <- as.factor(df$Cambio)
str(df$Cambio)

# coluna com nome do carro
library(tidyr)
?separate

df <- separate(df,"Carro",into="Nome",sep = " ",remove = FALSE)
summary(df$Nome)
df$Nome<- as.factor(df$Nome)
str(df$Nome)
str(df$Carro)

str(df)

df<- na.omit(df)
 

write.table(df,file="FipePrev.csv",row.names = FALSE,sep = ",",fileEncoding = "UTF-8")





# Aplicar Machine Learning no R

setwd("C:\\Users\\nelzi\\OneDrive\\Área de Trabalho\\R")


df <-read.csv("C:\\Users\\nelzi\\OneDrive\\Área de Trabalho\\R\\FipePrev.csv",header=TRUE,encoding="UTF-8")

# separar dados de treino e teste


# Dados de treino - 70%
treino = df[1:7,]


# Dados de treino - 30%
teste = df[8:10,]

View(treino)
View(teste)


length(df$Marca)*0.7
length(df$Marca)

treino = df[1:13698,]
teste = df[13699:19569,]

View(treino)
View(teste)

length(treino$Marca)+length(teste$Marca)
 

# Separar de maneira randomica
?sample

sample(1:6,1)

sample(1:19569,13698)


?set.seed
set.seed(100)
 

linhas <- sample(1:length(df$Marca),length(df$Marca))*0.7

# Dados de treino - 70%
treino = df[linhas,]
 

#Dados de teste - 30%
teste = df[-linhas,]


length(treino$Marca)+length(teste$Marca)

### criar o modelo ###
library(rpart)

modelo <- rpart(Preço ~.,
                data=treino,
                control = rpart.control(cp=0))



### Realizar previsôes ###
?predict


teste$previsão <- predict(modelo,teste)


