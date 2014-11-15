library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello 1974 Used Car Buyer"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("cyl",
                  "Number of Cylinders",
                  min = 4,
                  max = 8,
                  value = 6,
                  step=2),
    
        sliderInput("mpg",
                    "Target MPG",
                    min = 10,
                    max = 35,
                    value = 22,
                    step=0.2),
      
      sliderInput("gear",
                  "Target Gears",
                  min = 3,
                  max = 5,
                  value = 4,
                  step=0.5),
      
      sliderInput("drat",
                  "Rear Axle Ratio",
                  min = 2.5,
                  max = 5,
                  value = 3.5,
                  step=0.02),
      p("This application selects car options based on user preferences.  Move the sliders and 
        Random Forest ML will indicate the car option that best fits your desires.")
      ),
    

    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      h2(textOutput("Recom"))
    )
  )
))
