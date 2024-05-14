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

# valores faltantes - NAs
dados[!complete.cases(dados),]


#salarios

# tratar salarios
summary(dados$Salario)

# ver mediana
median(dados$Salario,na.rm = T)

#atribuir mediana a NAs
dados[is.na(dados$Salario),]$Salario = median(dados$Salario,na.rm = T)

#buscar NAS em salario parar checar
dados[!complete.cases(dados$Salario),]



# Faltar de padronização em Gênero
#ver valores
unique(dados$Genero)
summary(dados$Genero)

#tranformar Fe fem em feminino
#"" . M em Masculino (moda)
dados[is.na(dados$Genero)| dados$Genero == "M" ,]$Genero = "Masculino"
dados[dados$Genero == "F"| dados$Genero == "Fem", ]$Genero = "Feminino"

#remover leveis não  utilizados
dados$Genero = factor(dados$Genero)

#ver resultado
summary(dados$Genero)
 

#idades fora do dominio 
summary(dados$Idade)

#fora do dominio ,numérico - ver idades anormais
dados[dados$Idade<0 | dados$Idade>110 ,]$Idade


#não temos idade NAs
dados[is.na(dados$Idade), ]

#opção, preencher com mediana
median(dados$Idade)

# subtituição
dados[dados$Idade<0 | dados$Idade>110 ,]$Idade =  median(dados$Idade)


#buscamos novamente idades anormais
dados[dados$Idade<0 | dados$Idade>110 ,]

summary(dados$Idade)



# Dados duplicados pelo ID
#buscando id 
x = dados[duplicated(dados$Id),]
x

#verificamos que o id 81 está duplicado
# vamos excluir pelo id não pelo indice
dados = dados[!dados$Id %in% c(x$Id),]

#buscamos a linha que estava duplicada
dados[dados$Id ==x$Id ,]

#verificamos novamente 
x = dados[duplicated(dados$Id),]
x



# Estado fora do Dominio 
#fora do dominio - categorico
unique(dados$Estado)
summary(dados$Estado)

#preencher com a moda, rs 
dados[!dados$Estado %in% c("RS","SC","PR"),]$Estado = "RS"
summary(dados$Estado)

#removemos fatores não usados
dados$Estado = factor(dados$Estado)

#visualizar  novamente
summary(dados$Estado)



# outliers, criando un parametro com desvio padrão
desv = sd(dados$Salario, na.rm = T)
desv

dados[dados$Salario >=2 *desv , ]$Salario

#outra forma, resultado semelhante, mais sem os NAs
boxplot(dados$Salario)
x = boxplot(dados$Salario)$out
x

#atualizamos todos para mediana
median(dados$Salario)
dados[dados$Salario >= 2 *desv , ]$Salario = median(dados$Salario)

#checamos se sairam os outliers
dados[dados$Salario >= 2 *desv , ]$Salario


