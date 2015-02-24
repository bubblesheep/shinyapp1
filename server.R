library(shiny)


# Load data processing file
data(mtcars)
car<-rownames(mtcars)
mtcars<-cbind(car,mtcars)
rownames(mtcars)<-NULL

# Shiny server
shinyServer(
        function(input, output) {
               

                selected<-reactive({
                        mtcars[mtcars$mpg>=input$mpg[1] & mtcars$mpg<=input$mpg[2] 
                               & mtcars$hp>=input$hp[1] & mtcars$hp<=input$hp[2]
                               & mtcars$wt>=input$wt[1] & mtcars$wt<=input$wt[2]
                               & mtcars$cyl==input$cyl
                               & mtcars$am==input$am
                               ,c(1,2,3,5,7,10)]
                })
                output$table1 <- renderTable({
                        if(input$checkbox==TRUE){selected()}
                })
                 
        
                

                
                output$plot1<-renderPlot({
                        plot(mtcars[,as.numeric(input$y)]~mtcars[,as.numeric(input$x)],
                             xlab=colnames(mtcars)[as.numeric(input$x)],
                             ylab=colnames(mtcars)[as.numeric(input$y)])
                        
                })  
                

                output$t2<-renderText({
                        paste("X mean is ",mean(mtcars[,as.numeric(input$x)]))
                })
                
                output$t3<-renderText({
                        paste("Y mean is ",mean(mtcars[,as.numeric(input$y)]))
                })
                output$table1 <- renderTable({
                        if(input$checkbox==TRUE){selected()}
                })
                
        }
)