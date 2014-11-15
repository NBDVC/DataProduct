library(shiny)
library(caret)
library(randomForest)
data(mtcars)
mtcars$ID<-1:32
qus<-""
load("ML.RData")
#RF<-train(ID~., meth="rf", data=mtcars, importance = TRUE)
testing<-apply(mtcars, 2, FUN=median)
Cnames<-names(testing)
testing<-matrix(testing, nrow=1, ncol=12)
testing<-data.frame(testing)
colnames(testing)<-Cnames

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  x    <- mtcars[,"cyl"]  # Old Faithful Geyser data
  bins1 <- seq(4, 8, length.out =6)
  y    <- mtcars[,"mpg"]  # Old Faithful Geyser data
  bins2 <- seq(8, 36, length.out =10)
  z    <- mtcars[,"gear"]  # Old Faithful Geyser data
  bins3 <- seq(2, 6, length.out =6)
  w    <- mtcars[,"drat"]  # Old Faithful Geyser data
  bins4 <- seq(2, 6, length.out =10)
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({

    
    # draw the histogram with the specified input abline
    par(mfrow=c(2,2))
    hist(x, breaks = bins1, col = 'darkgray', border = 'white', main="cylinders")
    abline(v=input$cyl, col=555, lwd=3)
    hist(y, breaks = bins2, col = 'darkgray', border = 'white', main="miles per gallon")
    abline(v=input$mpg, col=555, lwd=3)
    hist(z, breaks = bins3, col = 'darkgray', border = 'white', main="gears")
    abline(v=input$gear, col=555, lwd=3)
    hist(w, breaks = bins4, col = 'darkgray', border = 'white', main="gear ratio")
    abline(v=input$drat, col=555, lwd=3)
  })


  output$Recom <- renderText({
    testing[,2]=input$cyl
    testing[,1]=input$mpg
    testing[,10]=input$gear
    testing[,5]=input$drat
    
    paste("We think you would like ", 
    rownames(mtcars[predict(RF, newdata=testing),]))
    })
})
