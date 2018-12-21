
library(shiny)
# Define server logic required to draw a scatterplots 
shinyServer(function(input, output) {
  
  output$scatterplot <- renderPlot({
    
  data<-merged_df
    
    # create plot from filtered data
    ggplot(data=data, aes_string(x = input$x, y = input$y)) +
      geom_point(fill = 'blue') +
      theme(text = element_text(size=20),
            axis.text.x = element_text(angle = 45, hjust = 1)) 
      
    
  })
  
})

