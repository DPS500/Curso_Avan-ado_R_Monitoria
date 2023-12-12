#install.packages("shiny")
library(shiny)

ui <- fluidPage(
  titlePanel("Distribuição Normal"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("ide", "selecionar o tamanho do n/ vetor de amostra:"),min = 10, max = 1000, value = 10)
    ),
    mainPanel(
      plotOutput("ids"),
   
    )   
  )
)


