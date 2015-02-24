
library(shiny)


shinyUI(fluidPage(
        titlePanel("Mtcars Dataset Lookup and Visualization"
                   
        ),
        
        sidebarLayout(position = "left",
                      sidebarPanel( h3("Lookup Selection"),
                                    h4("Factor Variable Selection"),
                                    radioButtons("cyl","Number of cylinders",
                                                     choices = list("4 cylinders" = 4, "6 cylinders" = 6, "8 cylinders" = 8),selected = 4),
                                    radioButtons("am","Transmission Type",
                                                       choices = list("automatic" = 0, "manual" = 1),selected = 0),
                                    h4("Numeric Variable Selection"),
                                    
                                    sliderInput("mpg", "mpg Miles/(US) gallon",
                                                min = 10, max = 34, value = c(10,34)),
                                    sliderInput("hp", "Gross horsepower",
                                                min = 52, max = 335, value = c(52, 335)),
                                    sliderInput("wt","Weight (lb/1000)",min = 1.5, max = 5.5, value =c(1.5,5.5)),
                                    
                                    checkboxInput("checkbox", "Show matching data", value = TRUE),
                                    

                                     h3("Plot selection"),
                                                  
                                   radioButtons("y","Y axis",choices = list("mpg"= 2, "wt" =7, "hp"=5),selected = 2),
                                   radioButtons("x","X axis",choices = list("mpg"= 2, "wt" =7, "hp"=5),selected = 2 )
                                                  
                                                  , submitButton("Submit")
                                    ),
                       
                                    
                  
                      mainPanel(
                                h5("created by Bubblesheep, Feb 2015",align="right"),
                                img(src="car_icon.gif", height = 60, width = 80,align="right"),
                                p("On this page you can have a better understanding of the 'Mtcars' dataset"),
                                p("You will be able to select certain cars based on your preference and check their relationship plots"),
                                p("Please use the first half of the side panel to select conditions for your lookup tool"),
                                p("And the second half of the side panel is for plotting purpose, you can customize the x and y-axis variables"),
                                p(" "),
                                h5("Your selected cars"),
                                tableOutput('table1'),
                                img(src="mator.jpg", height = 100, width = 150,align="center"),
                               
                                h5("Plots based on your selection ",align="left")
                                

                                ,textOutput("t2")
                                ,textOutput("t3")
                                ,plotOutput('plot1')
             
                                )
        )      
))