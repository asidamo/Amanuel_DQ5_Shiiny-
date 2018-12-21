# Define server logic required to draw a bar
shinyServer(function(input, output) {
  
  output$barplot <- renderPlot({
    
    
    # create plot from filtered data
    
   if(input$y=='countrx') {
     title_var='count of OPioids Prescribed'
   }else {
     title_var="percentage share Of Prescription per Drug Type"
    
   }
    
    
    ggplot(data=data, aes(x=rx)) +
      geom_bar(aes_string(y=input$y), fill='#0072B2', stat="identity") +
      theme(axis.text.x = element_text(angle=90,face='bold',size=12, vjust=0.6)) + 
      labs(title = title_var, x = 'opioidsPrescribed', y = input$y) +
      theme(plot.title = element_text(face='bold',hjust = 0.5))
    
  })
  
})
