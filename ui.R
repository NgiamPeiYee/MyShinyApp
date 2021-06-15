#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("This app aims to plot the different variables against miles per gallon (mpg). Please choose the variable you would like to plot below."),
   
    sidebarPanel(
      
      selectInput("variable", "Variable:", 
                  c("Cylinders" = "cyl",
                    "Transmission" = "am",
                    "Gears" = "gear"))
    ),

      
    mainPanel(
            
            h3(textOutput("caption")),
            plotOutput("mpgPlot")
        )
    ))
