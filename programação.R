# Estrutura de programação

#If
a = 10
b = 20
if(b < a)
{
  print("Verdadeiro")
}else
{
  print('Falso')
}  

#Ifelse
x = ifelse(a>10,"A é maior","A não é maior")
x

# For
for (i in 1:10) {
  print(i)
}

# while
a = 1
while (a <= 10)
{
  print(a)
  a = a+1
}

#Função 
parouimpar <- function(x){
  return(ifelse(x%%2==0,"Par","impar"))
  
}
parouimpar(5)
parouimpar(12)
