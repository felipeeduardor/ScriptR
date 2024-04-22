# Limpeza e tratamento de Dados

#importa dados.string vazia com fatores
dados = read.csv("churn.csv", sep = ";",na.strings = "", stringsAsFactors = T)
head(dados)
summary(dados)


# colunas
# Dar nomes corretos as colunas 
colnames(dados) = c("Id","Score","Estado","Genero","Idade","Patrimonio","Saldo","Produtos","TemCartCredito","Ativo","Salario","Saiu")
head(dados)


# Explorar Dados , Colunas categóricas
# Estados
counts = table(dados$Estado)
barplot(counts,main="Estado",xlab="Estado")

#Genero
counts=table(dados$Genero)
barplot(counts, main="Genero",xlab="Genero")



# Esplorar colunas numéricas
# Score
summary(dados$Score)
boxplot(dados$Score)
hist(dados$Score)


# Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)


# Saldo
summary(dados$Saldo)
boxplot(dados$Saldo)
hist(dados$Saldo)

# Salario
summary(dados$Salario)
boxplot(dados$Salario)
hist(dados$Salario)
