# Importando  Dados

install.packages("openxlsx")
library(Openxlsx)

#texto


x = read.csv(file.choose(),header = TRUE, sep = ",")
x

x = read.csv('fipe_jun2018.csv',header = TRUE,sep ="," )
x


#Excel
dados = read.csv("fipe_jun2018.csv",sheet=1)
dados
