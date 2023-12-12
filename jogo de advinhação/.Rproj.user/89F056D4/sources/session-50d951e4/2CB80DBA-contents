#install.packages("shiny")
library(shiny)

# Criando um jogo de adivinhação

# Definir UI

ui <- fluidPage(
  titlePanel("Jogo de Adivinhação"),
  sidebarLayout(
    sidebarPanel(
      textInput("guess", "Digite sua estimativa:"),
      actionButton("submit" , "Enviar Palpite"),
      verbatimTextOutput("result")
    ),
    mainPanel(
      h3("Instrução"),
      p("Tente adivinhar o número secreto!")
    )
  )
)



# Definir servidor
server <- function(input, output) {
  # Gerar um número secreto de 1 a 100
  secret_number <- round(runif(1, 1, 100))
  observeEvent(input$submit,{
    
    guess <- as.numeric(input$guess)
    #Função que verifica se a estimativa está correta e fornece feedback
    if (!is.na(guess)){
      if(guess == secret_number){
        output$result <- renderText("Parabéns! Você acertou.")
      } else if (guess < secret_number){
        output$result <- renderText("Tente um número maior.")
      } else {
        output$result <- renderText("Tente um número menor.")
      }
    } else {
      output$result <- renderText("Por favor, insira um número válido.")
    }
  })
}

# Criando o aplicativo shiny
shinyApp(ui,server)














