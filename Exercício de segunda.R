
if (  )
{ 
  }else{}

if (condição) {
  # Código a ser executado se acondição for verdadeira
} else{ }
  # Código a ser executado se acondição for falsa


Idade <- 30

if(Idade >= 18) {
  cat("Você é maior de idade.")
}else{
  cat("Você é menor de idade")
}


classificarNotas <- function(x) 

     
if(x >= 7) {
  cat("Aprovado")
}else{
  cat("Reprovado")
}
classificarNotas(6.99)


# 3 Exercício Desenvolva um programa que peça ao usuário para digitar dois números e, em seguida, informe qual é o maior dos dois.

x <- 7
y <- 6
  
  
  if(x > y) {
    cat("X é maior")
  } else if(x < y) {
    cat("x é menor")
  }
else{
    cat("é igual")}

#readline()

nu1 <- readline(prompt = "Digite o primeiro número:\n")
nu2 <- readline(prompt = "Digite o segundo número:\n")


if(nu1 > nu2) {
  cat("O primeiro número é maior. \n")
} else if(nu1 < nu2) {
  cat("O segundo número é maior.")
}
else{
  cat("Os números são iguais")
}


# Exercício 3 Escreva um script que solicite a entrada do usuário para a temperatura em Celsius e imprima se a água está congelada (abaixo de 0º C), líquida ( entre 0ºC e 100ºC), ou vapor (acima de 100ºC).

nu1 <- as.numeric(readline(prompt = "Digite a temperatura:\n"))


if(nu1 < 0) {
  cat("a água está congelada.")
} else if(nu1 >= 0 && nu1 <= 100) {
  cat("a água está líquida")
} else{
  cat("è vapor")
}


fruta <- c("manga", "melancia", "cupu")

númeromax <- 3

tentativa <- 0

palpe <- readline("Qual a fruta? \n")


  if(palpe %in% fruta) {
    cat("Parabens você acertou")
  } else{
    cat("Lamento mais não foi dessa vez. \n")
    
    tentativa <- tentativa + 1
    palpe <- readline("Qual a fruta? \n")
    
    if(palpe %in% fruta) {
      cat("Parabens você acertou")
    } else{
      cat("Lamento mais não foi dessa vez. \n")
      
      tentativa <- tentativa + 1
      palpe <- readline("Qual a fruta? \n")
      
      if(palpe %in% fruta) {
        cat("Parabens você acertou")
      } else{
        cat("Lamento mais não foi dessa vez. \n")
        
        tentativa <- tentativa + 1
        palpe <- readline("Qual a fruta? \n")
        
          if(palpe %in% fruta) {
            cat("Parabens você acertou")
          } else{
            cat("Suas tentativas acabaram. A fruta era:", paste(fruta, collapse = ","), "\n")
        }
      }
     }
    }  
    
  
    
      

















