install.packages("shinydashboard") 
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  skin = "purple",
  dashboardHeader(title = "App_Informs"), 
  dashboardSidebar(
    sidebarMenu(
      menuItem("Informações pessoais", tabName = "forms", icon = icon("heart")),
      menuItem("Discente", tabName = "aluno", icon = icon("house"))
    )
  ),
  dashboardBody(
    fluidRow(
      tabItems(
        tabItem(
          tabName = "forms", 
          box(    
          textInput("txt", "Nome Completo:"),
          dateInput("data", "data de nascimento:", format = "dd-mm-yyyy"))
        ),
        tabItem(
          tabName = "aluno",
          box(    
          textInput("add", "Nome do discente:"),
          numericInput("num", "matrícula:", min = 1, max = 2000, value = 500))
        )
      )
    )
  )
)


server <- function(input, output) {

   
}


shinyApp(ui = ui, server = server)
