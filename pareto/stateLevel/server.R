

# Define server logic required to draw a bar
shinyServer(function(input, output) {
  
  output$barplot <- renderPlot({
    
    
    # create plot from filtered data
    
    colnames(data)<-c('state','CountofPrescriptions','TotalPrescribers')
    if(input$y=='CountofPrescriptions') {
      title_var='Count of Opioids Prescribed By State'
    }else {
      title_var="Number Of Opioids Prescribers By State"
      
    }
    
    if(input$y=='CountofPrescriptions') {
      col_var='#C62F4B'
    }else {
      col_var="#09557F"
      
    }
    
    ggplot(data=data, aes(x=state)) +
      geom_bar(aes_string(y=input$y), fill=col_var, stat="identity") +
      theme(axis.text.x = element_text(angle=90,face='bold',size=12, vjust=0.6)) + 
      labs(title = title_var, x = 'States', y = input$y) +
      theme(plot.title = element_text(face='bold',hjust = 0.5))
    
  })
  
})
