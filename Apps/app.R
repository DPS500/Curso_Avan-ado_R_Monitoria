#Jeconias Freitas
#install.packages("shiny")
library(shiny)

ui <- fluidPage(
  titlePanel("Distribuição"), 
  sidebarLayout(
    sidebarPanel(
      sliderInput("ide", "Selecionar o tamanho do n/ vetor de amostra:", min = 1, max = 500, value = 10)
    ),
    mainPanel(
      plotOutput("ids"),
    )
  )
)

server <- function(input,output){
  output$ids<-renderPlot({hist(rnorm(input$ide),
                               main="Histograma", xlab="Dados", ylab="Frequência")})
}


shinyApp(ui,server)