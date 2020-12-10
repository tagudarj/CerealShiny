# Load packages 
library(shiny)
library(tidyverse)
library(ggplot2)

# Load data 
cereal <- read_csv("data/cereal.csv")

#Renaming manufacturer names
cereal1 <- cereal %>%
    mutate(mfr = str_replace_all(mfr, c("A" = "American Home Food Products")),
           mfr = str_replace_all(mfr, c("G" = "General Mills")),
           mfr = str_replace_all(mfr, c("K" = "Kellogs")),
           mfr = str_replace_all(mfr, c("N" = "Nabisco")),
           mfr = str_replace_all(mfr, c("P" = "Post")),
           mfr = str_replace_all(mfr, c("Q" = "Quaker Oats")),
           mfr = str_replace_all(mfr, c("R" = "Ralston Purina")),
           type = str_replace_all(type, c("H" = "Hot")),
           type = str_replace_all(type, c("C" = "Cold"))) %>%
    rename("manufacturer" = mfr)



ui <- fluidPage(    
    
    # Giving the page a title
    titlePanel("R Shiny App"),
    #Giving the page a subtitle
    strong(div(em(p("of U.S. Cereal Data")), style = "color:gray")),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with inputs
        sidebarPanel(
            #Header for table
            h3("Table:"),
            #Table header subtitle
            p("Use the dropdowns to view information on U.S. Cereals in the table."),
            #Input for first column choice
            selectInput("table1", "Nutritional Facts:",
                        c("Calories (per serving)" = "calories",
                          "Protein (g)" = "protein",
                          "Fat (g)" = "fat",
                          "Sodium (mg)" = "sodium",
                          "Fiber (g)" = "fiber",
                          "Carbohydrates (g)" = "carbo",
                          "Sugars (g)" = "sugars",
                          "Potassium (mg)" = "potass",
                          "Vitamins and Minerals (%)" = "vitamins")),
            #Input for second column choice
            selectInput("table2", "Quality:",
                        c("Manufacturer" = "manufacturer",
                          "Type" = "type")),
            #Input for third column choice
            selectInput("table3", "Measures (per serving):",
                        c("Weight (oz)" = "weight",
                          "Cups" = "cups")),
            #Input for fourth column choice
            selectInput("table4", "Ranking:",
                        c("Rating" = "rating",
                          "Shelf Level" = "shelf")),
            #Help Text for shelf level
            helpText("Note: shelf level is display height ",
                     strong("(1, 2, 3)"), 
                     "counting from the floor."),
            
            #Number of observations
            numericInput(inputId = "obs",
                         label = "Number of observations:",
                         value = 10),
            #Noting the maximum number of observations
            helpText("Note: The maximum number of observations is", 
            strong("77.")),
            
            #Header for graph
            h3("Graph:"),
            #Table header subtitle
            p("Use the dropdowns to view information on U.S. Cereals in
                     the graph."),
            selectInput("graph", "Frequency Value:",
                        c("Shelf Level" = "shelf")),
            # Input: Slider for the number of bins ----
            sliderInput(inputId = "bins",
                        label = "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
            img(src = "cereal.png", height = 160, width = 230),
            helpText("Photo found",
              a("here.", 
                href = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.themarketingscope.com%2F
                3-cereal-brands-that-will-never-get-stale%2F&psig=AOvVaw2vwMJpj5rAVe3KgzP9hNU5&ust=
                1607659967608000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJj_k5zGwu0CFQAAAAAdAAAAABAN")),
        ),
        
        # MAIN PANEL
        mainPanel(
            #Center Header
            h1("Information from U.S. Cereal Data", align = "center"),
            #Creators
            strong(div(em(p("GVSU STA 518 02 ~ Team brunswick-green: Ian Fetterman and Jessica Tagudar", 
                            align = "center"))), style = "color:gray"),
            # Kaggle Dataset Source
            p("This dataset was found on ",
              a("Kaggle.", 
                href = "https://www.kaggle.com/crawford/80-cereals?select=cereal.csv"),
            #Github source
            "For our R code, visit our ",
            a("Github repository.", 
              href = "https://github.com/STA518-02-Fall20/project08-brunswick-green.git")),
            # User Help Text
            strong("There are many ways that U.S. cereals are specifically advertised based on their nutritional 
            value, quality, measures per serving, and ranking."),
            br(),
            br(),
            p("How do these factors affect the differences between different U.S. cereals? For example,
            do the nutritional facts have an influence on the shelf level? Does the manufacturer name have
            an influence on the rating? Do the nutritional facts (eg. sugars, calories) alter your 
            opinion on your favorite cereal?"),
            em("Use the dropdowns to view explore these possibilities and 
            view different frequencies on the graph and table. Be sure to increase or decrease the 
            number of observations to expand your findings, as needed."),
            br(),
            br(),
            textOutput("tableTitle"),
            tableOutput("cerealTable"),  
            textOutput("textTable"),
            br(),
            plotOutput("cerealPlot"),
            textOutput("textGraph"),
            br()
        )
        
    )
)
server <- function(input, output) {
    #Text info on graph
    output$tableTitle <- renderText({
        paste("Table on U.S. Cereals")
    })
    
    # Creating table
    # User can specify number of obs
    output$cerealTable <- renderTable({
        cereal_table <- cereal1 %>%
            select(name, input$table1, input$table2, input$table3, input$table4) %>%
            head(input$obs)
    }, rownames = TRUE)
    
    #Text info on table
    output$textTable <- renderText({
        paste("- This table is currently showing ", input$obs, " observations with the name, ", input$table1, ",", input$table2, 
              ",", input$table3, "per serving, and", input$table4, "of each cereal.")
    })
    
    # Creating bar plot
    # Need to fix input x value, and bins
    output$cerealPlot <- renderPlot({
        x    <- cereal1$shelf
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        ggplot() +
            geom_histogram(mapping = aes(x, border = "white"), fill = "orange") +
                           labs(title = "Frequency of VARIABLE",
                                subtitle = "in U.S.Cereals",
                                x = "VARIABLE",
                                y = "Frequency of VARIABLE") +
            theme_bw()

    })

    #Text info on graph
    output$textGraph <- renderText({
        paste("- This graph is currently showing the frequency of VARIABLE in U.S. Cereals.")
    })
    
}

shinyApp(ui, server)