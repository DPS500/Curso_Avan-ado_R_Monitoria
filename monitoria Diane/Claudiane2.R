## Análise Estatística Descritiva 

# Usando um conjunto de dados
summary(mtcars)

# Criando um vetor
x <- 1:5
x

# Média
mean(x)

# Mediana
median(x)

# Desvio padrão
sd(x)
# Variância
var(x)

# Quantis
quantile(x, probs = c(0.25, 0.5, 0.75))

# Usando o pacote DesTools (moda)
#install.packages("DesTools")
#library(DescTools)

## Covariância ##
y <- c(2, 4, 5, 4, 5)
y

# Calculando a covariância de x e y
cov(x,y)

# Criando matriz
matriz_dados <- matrix(c(1, 2, 3, 4, 5, 2, 4, 5, 4, 5), ncol = 2)
matriz_dados

cov(matriz_dados)

## Correlação ##
cor(x,y)

## Criando gráficos ##
# Gráfico de dispersão 
plot(x,y,main = "Gráfico de Dispetsão", xlab =  "Eixo X", ylab = "Eixo Y", pch = 16, col = "Pink")

# Criando dados 
dados2 <- c(3,3,3,4,4,4,4,5,5,5,6,6,7)
dados2

# histograma
hist(dados2, main = "Histograma", xlab = "Valores", ylab = "Frequência", col = "red", border = "black")


# Criar dados
categorias <- c("A" , "B" , "C" ,"D")
Valores <- c(10, 5, 8, 12)
categorias
Valores

# gráfico de3 barras 
barplot(Valores, names.arg = categorias, col = "Pink", main = "Gráfico de Barras", xlab = "categorias", ylab = "Valores")

# Criando dados
grupo1 <- c(20,25,30,35,40)
grupo2 <- c(15,28,32,38,42)
grupo1
grupo2

# Boxplot
boxplot(grupo1, grupo2, names = c("Grupo 1","Grupo 2"), col = c("Black", "Pink"), main = "Boxplot", ylab = "Valores")

# Instalar pacotes
#install.packages("dplyr")
#install.packages("tidyr")
library(dplyr)
library(tidyr)

# Criar DataFrame
df_dados <- data.frame(
  ID = c(1,2,3,4,5),
  Nome = c("Gabriel","Ari","Claudiane","Waylla","Victor"),
  Idade = c(23,18,18,19,23),
  Salario = c(5000,6000,10000,7000,90)
)
df_dados

# Filtrar dados para pessoas com idades acima de 18 anos 
dados_filtrados <- df_dados %>%
  filter(Idade > 18)
dados_filtrados

# Adicionar uma linha com dados ausentes
df_dados2 <- rbind(df_dados, data.frame(ID= 6, Nome = NA, Idade = 40, Salario = 75000))
df_dados2

# Remover linhas com dados ausentes
dados_sem_ausentes <- df_dados2 %>%
  drop_na()
dados_sem_ausentes

## Convertendo Variáveis ##
#Criando um fator
fator <- factor(c("1" ,"2" ,"3" ,"4"))
fator


## Convertendo o fator para número
numeros <- 123
numeros
# Convertendo o número para string
texto <- as.character(numeros)
texto
