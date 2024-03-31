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
