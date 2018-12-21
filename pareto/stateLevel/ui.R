
# https://rstudio-pubs-static.s3.amazonaws.com/292287_894b2591571b4acdab51269e04f45125.html

# Define UI
shinyUI(
  dashboardPage(
    dashboardHeader(title = "Opioids By States"),
    dashboardSidebar(tags$blockquote(' ')),
    dashboardBody(
      fluidRow(
        
        box(  
          
          # Inputs
          sidebarPanel( 
            width=12,
            # Select variable for y-axis
            selectInput(inputId = "y", 
                        label = "Y-axis:",
                        choices = c( "CountofPrescriptions",'TotalPrescribers'), 
                        selected = "CountofPrescriptions"))
          
        ),
        
        mainPanel(
          plotOutput(outputId = "barplot") 
          
        )
      )
    )    
  )
)
