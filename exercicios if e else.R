# Estruturas condicionais if e else
g <- 8

if (g > 7) {print("o número é maior que 7.")} else {print("o número é menor igual a 7.")}


numero <- -5

if (numero > 0) {print("o número é positivo.")} else {print("o número é negativo ou zero.")}

idades <- c(28, 30)
nomes <- c("João", "Davi")
df <- data.frame(nomes, idades)
df
if (df$idades[df$nomes == "João"] > df$idades[df$nomes =="Davi"])
  {
  "mais velho: João"
  } else {"mais velho: Davi"}
