# server.R

library(shiny)
shinyServer(function(input, output) {
  output$sampleTable <- renderDataTable({
    if (input$sampleSize > input$population) stop("Sample size cannot be bigger than the population")
    set.seed(input$seed)
    datatable(data.frame(SampleID = 1:input$sampleSize,
               Sample = sample(input$population, input$sampleSize, FALSE)))
  })
})
