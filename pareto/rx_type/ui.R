# Define UI
shinyUI(
  dashboardPage(
    dashboardHeader(title = "Opioids Prescriptions"),
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
                          choices = c( "countrx",'pctPrescribed'), 
                          selected = "countrx"))
       
      ),
      
    mainPanel(
        plotOutput(outputId = "barplot") 
        
        )
      )
    )    
  )
)
