#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  reactive_iris <- shiny::reactiveVal(iris)

  observeEvent(input$press, {
    #browser()
    tmp_reactive_iris <- reactive_iris()

    tmp_reactive_iris[tmp_reactive_iris$Species=='setosa',]$Petal.Length =
      tmp_reactive_iris[tmp_reactive_iris$Species=='setosa',]$Petal.Length * 2

    reactive_iris(tmp_reactive_iris)

  })


  output$plot <- plotly::renderPlotly(
    plotly::ggplotly(ggplot2::ggplot(reactive_iris(),
                                     ggplot2::aes(x=Sepal.Length,
                                                  y=Petal.Length,
                                                  color=Species)) +
                       ggplot2::geom_point())
  )

}
