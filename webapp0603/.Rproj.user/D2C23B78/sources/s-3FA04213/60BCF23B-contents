#create data
JapanesePopulation %>% filter(AREA == "All Japan") %>% select(year, Population) -> ggplot_data 

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$PopulationPlot <- renderPlot({
    #create data
    JapanesePopulation %>% filter(AREA == input$region) %>% select(year, Population) -> ggplot_data 
    # Render a barplot
    ggplot_data %>% 
      ggplot(aes(x = year, y = Population)) + 
      geom_bar(stat = "identity", fill =  "skyblue")+
      scale_y_continuous(labels = comma)
    
      # theme(axis.text.x = element_text(size = 18))
  })
}

