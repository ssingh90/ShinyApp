library(shiny)

shinyUI(fluidPage(
  titlePanel("Ovulation Calculator"),
  
  
  ##sidebarLayout(
    sidebarPanel(
      h4("Wondering when your most fertile days are? Use this simple tool to find out!"),
      
        
      fluidRow(
        
          column(12, 
               dateInput("lmp", 
                         label = h5("First Day of Last Menstrual Period"), 
                         value = Sys.Date())
               ),
    
        
          column(12, 
                numericInput("cycle", 
                            label = h5("Average Length of Cycle (Days)"), 
                            value = 28)
                )   ,
          column(12, 
               h3("Cycle"),
               helpText("Your average monthly cycle")
                ),
        
          column(12,
              submitButton("Get Fertile Window")
                )
      )),
      
      
  mainPanel(
    h3("Ovulation Calculator Results"),
    
    textOutput("text1"),
    textOutput("text2"),
    p(),
    p(),
    textOutput("text3"),
    textOutput("text4")
    
  
    
      
   
  )
  )
    
)



        