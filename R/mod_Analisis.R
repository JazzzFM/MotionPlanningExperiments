#' Analisis UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_Analisis_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' Analisis Server Function
#'
#' @noRd 
mod_Analisis_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_Analisis_ui("Analisis_ui_1")
    
## To be copied in the server
# callModule(mod_Analisis_server, "Analisis_ui_1")
 
