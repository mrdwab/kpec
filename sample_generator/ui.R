# ui.R
library(shiny)
library(DT)

shinyUI(fluidPage(
  titlePanel("Sample Generator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("population", 
                   label = h3("Input Population"), 
                   value = 300),
      numericInput("sampleSize",
                   label = h3("Desired Sample Size"), 
                   value = 30, 
                   min = 1),
      numericInput("seed",
                   label = h3("Seed"),
                   value = 1)
    ),
    mainPanel(
      dataTableOutput("sampleTable")
    )
  )
))
