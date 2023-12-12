install.packages("shinydashboard")
library(shiny)
library(shinydashboard)


ui <- dashboardPage(
  skin = "purple",
  dashboardHeader(title = "App_informs"),
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
         textInput("txt", "Nome completo:"),
         dateInput("data", "data de nascimento:", format = "dd-mm-yyyy"))
       ),
       tabItem(
         tabName = "aluno",
         textInput("add", "nome do discente:"),
         numericInput("num", "matricula:", min = 1, max = 1000, value = 50)
       )
     )
   ) 
 )
)


server <- function(input, output) {

    
}


shinyApp(ui = ui, server = server)
