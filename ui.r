library(shiny)
library(ggplot2)

# Define UI for ToothGrowth Explorer 
shinyUI(fluidPage(  
  # Application title
  headerPanel("ToothGrowth Data Explorer!"),
  
  sidebarLayout
  (
      sidebarPanel(width=4,
       h3("Data Source: ToothGrowth Dataset"),
       h3("Description:"),
       h4("Length of odontoblasts (teeth) in each of 10 guinea pigs at each of 3 dose levels of Vitamin C (0.5, 1, and 2 mg) with each of two delivery methods (Orange juice (OJ) or ascorbic acid(VC))"),
       tags$a(href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/ToothGrowth.html", "For more details, Please click here!"),
       
       h3("Summary:"),  
  
        verbatimTextOutput("summary"),
        helpText("Tip: Select the drop down to analyze impact of Tooth growth by Supplement/Dosage.",
                "You may browse the data contents on the table here, search, navigate multiple pages",
                "and even control the number of entries on table per page using the drop down below."
        ),
        selectInput("xvar", "Analyze Tooth Growth by:",choices = c("dose", "supp")),
        
        h3("Data Browser"),
        dataTableOutput("toothData")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("scatterPlot"),
        plotOutput("boxPlot"),
        h3("Linear Regression Model"),
        fluidRow(
          column(12,
            verbatimTextOutput("lmodelSummary")
          ),
          h3("Regression Plots"),
          plotOutput("lmPlot")
        )
      )
  )
))
