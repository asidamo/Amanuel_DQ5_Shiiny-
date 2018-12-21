
library(shiny)
# Define UI
shinyUI(
  dashboardPage(
    dashboardHeader(title = 'Opioid Overdoses'),
    dashboardSidebar(tags$blockquote('The plots show factors that may affect overdose deaths — 
                                                                  source: Census')),
    dashboardBody(
      fluidRow(
        box(
        
          # Inputs
          sidebarPanel(  width=8,
                         
    
            # Select variable for y-axis
            selectInput(inputId = "y", 
                        label = "Y-axis:",
                        choices = c( "deaths"), 
                        selected = "deaths"),
            # Select variable for x-axis
            selectInput(inputId = "x", 
                        label = "X-axis:",
                        choices = c("countrx", "uninsuredPct2014", "PctHighschoolOrMoreEduc",'MHI','pctWhite','pctblack','medianAge','unemployment'), 
                        selected = "countrx")
          ),
          
          # Outputs
          mainPanel( width=10,
            plotOutput(outputId = "scatterplot") 
          
          )
        )
      )    
    )
    )
  )








