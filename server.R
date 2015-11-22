firstday <- function(lmp, cycle) lmp + cycle - 16
lastday <- function(lmp, cycle) lmp + cycle - 12

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
    paste("You entered the  first day of your Last Menstrual Period as", input$lmp)
  })
  
  output$text2 <- renderText({ 
    paste("You entered your Average Cycle as", input$cycle, "days")
  })
  
    output$text3 <- renderText({ 
      paste("Your best days to conceive are from:", firstday(input$lmp, input$cycle), "to", lastday(input$lmp, input$cycle))
    
      })
    
   
 
})
    