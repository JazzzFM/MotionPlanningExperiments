#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny shinydashboard shinythemes naniar
#' @noRd
app_ui <- function(request) {
dashboardPage(
 # golem_add_external_resources(),
    dashboardHeader(
      title = "Tablero de experimentos",
      titleWidth = 350
    ),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Análizar", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Descargar", tabName = "download", icon = icon("download")),
        menuItem("Bitácora", tabName = "consulting", icon = icon("list-alt"))
      )
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "dashboard",
        fluidRow(
          column(width =  6, 
          selectizeInput("filtro_1", label = "Seleccione el año",
          choices = c(1,2,3))
          ),
          column(width =  6, 
          selectizeInput("filtro_2", label = "Seleccione el mes",
          choices = c(1,2,3),
          selected = NULL, multiple = F)
          ),
          column(width =  12,     
          #highchartOutput("plot1")
          ),
          column(width =  12,     
          #highchartOutput("plot2")
          )
          )),
        # Second tab content
        tabItem(tabName = "download",
        fluidRow(
        column(width =  6, 
        selectizeInput("filtro_3", label = "Seleccione el año",
        choices = c(1,2,3), selected = NULL, multiple = F)
        ),
        column(width =  6, 
        selectizeInput("filtro_4", label = "Seleccione el mes",
        choices = c(1,2), selected = NULL, multiple = F)
        ),
        column(width = 12, class = "shadowBox",
        downloadButton('download',"Descargar datos")) )
        ),
        tabItem(tabName = "consulting",
          fluidRow(
          column(width =  6, 
          selectizeInput("filtro_5", label = "Seleccione el año",
          choices = c(1,2),
          selected = NULL, multiple = F)
          ),
          column(width =  6,  
          selectizeInput("filtro_6", label = "Seleccione el mes",
          choices = c(1,2),selected = NULL, multiple = F)
          ),
          column(width = 12, class = "shadowBox",
          #DT::dataTableOutput("Table"))
          )
        )
      )
    ),
    skin = "green"
  )
)
}
#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'MotionPlanningExperiments'
    )
  )
}
