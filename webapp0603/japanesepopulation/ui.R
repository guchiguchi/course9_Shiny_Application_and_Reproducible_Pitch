library(datasets)


# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Japanese Population Transition"),
  p(" "),
  p("This is a Japanese Prefecture population transition plot."),
  p("Select a prefecture from select box below and it show you population from 1975 to 2016"),
  
  p("I use rusult of Japanese System of Social and Demographic Statistics."),
  p("You can get the data from e-Stat(https://www.e-stat.go.jp/en)"),
  
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