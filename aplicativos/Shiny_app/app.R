
# install.packages("shinydashboard")
# library(shiny)
# library(shinydashboard)

ui <- dashboardPage(
  skin = "yellow",
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
          textInput("txt", "Nome completo:"),
          dateInput("data", "data de nascimento", format = "dd-mm-yyyy"))
        ),
        tabItem(
          tabName = "aluno",
          box(   
          textInput("add", "Nome do discente:"),
          numericInput("num","Matrícula:",min = 1, max = 1000, value = 50))
        )
      )
    )
    
  )

    
)


server <- function(input, output) {

    
}


shinyApp(ui = ui, server = server)
