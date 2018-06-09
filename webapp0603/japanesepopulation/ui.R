library(datasets)


# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Japanese Population Transition"),
  p(" "),
  p("This is a Japanese Prefecture population transition plot."),
  p("Select a prefecture from select box below and the plot show you population bar plot from 1975 to 2006"),
  
  p("I use rusult of Japanese System of Social and Demographic Statistics. You can get the data from e-Stat(Statics of Japan (https://www.e-stat.go.jp/en))"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("region", "Region:", 
                  choices = JapanesePopulation$AREA),
      hr(),
      helpText("Select Region")
    ),
    
    # Create a spot for the barplot
      plotOutput("PopulationPlot", width = "100%", height = "600px")  
    
  )
)