library(shiny)
library(ggplot2)
data(ToothGrowth)
l=lm(len ~ ., data=ToothGrowth)

shinyServer(function(input, output) {

  #Boxplots
  output$boxPlot <- renderPlot({
    if (input$xvar == "dose")
      boxplot(ToothGrowth$len ~ ToothGrowth$dose, col=c('red', 'yellow', 'lightgreen'), xlab='Dose', ylab="Length of Tooth", main='ToothGrowth by Dosage')
    else
      boxplot(ToothGrowth$len ~ ToothGrowth$supp, col=c('red', 'yellow', 'lightgreen'), xlab='Supplement Type', ylab="Length of Tooth", main='ToothGrowth by Supplement')
  })


  #print summary of data set
  output$summary <- renderPrint({
    summary(ToothGrowth)
  })
  
  #Data browser!
  output$toothData = renderDataTable(ToothGrowth, options=list(pageLength=20))
  
  #plot tooth length to dosage
  output$scatterPlot = renderPlot({
    ggplot(data=ToothGrowth, aes_string(x="dose", y="len", color="supp", shape="supp")) + labs(title='Influence of Dosage on ToothGrowth') + geom_point(size=I(4)) + xlab('Dose') + ylab('Length of Tooth') + ggtitle("Dosage Influence on Tooth Growth") + 
      theme(plot.title = element_text(lineheight=1.2, face="bold"))
  })
  
  #Print summary of linear model
  output$lmodelSummary = renderPrint({
    summary(l)
  })
  
  #Rendor regression model plots
  output$lmPlot <- renderPlot({
    par(mfrow=c(2,2))
    plot(l)
  })
  
})
