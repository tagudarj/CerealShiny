# Load packages ----
library(shiny)
library(tidyverse)
library(ggplot2)

# Load data ----
cereal <- read_csv("data/cereal.csv")


# User interface ----
ui <- (fluidPage(    
    
    # Give the page a title
    titlePanel("Cereal Information"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("column", "Column:", 
                        choices=colnames(cereal)),
            hr(),
            helpText("Data from US Cereal Dataset.")
        ),
        
        # Create a spot for the barplot
        mainPanel(
            plotOutput("cerealPlot")  
        )
        
    )
)   
)

# Server logic ----
server <- function(input, output) {
    
    # Fill in the spot we created for a plot
    output$cerealPlot <- renderPlot({
        
        # Render a barplot
        barplot(cereal[,input$column]*1000, 
                main=input$column,
                ylab="Freqency",
                xlab="Variable")
    })
}

# Run app ----
shinyApp(ui, server)
