#' name_of_module3 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_name_of_module3_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' name_of_module3 Server Functions
#'
#' @noRd 
mod_name_of_module3_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_name_of_module3_ui("name_of_module3_1")
    
## To be copied in the server
# mod_name_of_module3_server("name_of_module3_1")
