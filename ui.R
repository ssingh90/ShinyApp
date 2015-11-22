library(shiny)

shinyUI(fluidPage(
  titlePanel("Ovulation Calculator"),
  
  
  ##sidebarLayout(
    sidebarPanel(
      h4("Wondering when your most fertile days are? Use this simple tool to find out!"),
      
        
      fluidRow(
        
        column(12, 
               h5("About this app:"),
               helpText("Knowing when you are ovulating can boost your chances of getting pregnant.", 
                        "Fill out the fields below and then click the 'Get Fertile Window' button to find out when you're ovulating.")
                      
               ),
        
          column(12, 
               dateInput("lmp", 
                         label = h4("First Day of Last Menstrual Period"), 
                         value = Sys.Date())
               ),
    
        
          column(12, 
                numericInput("cycle", 
                            label = h4("Average Length of Cycle (Days)"), 
                            value = 28)
                ),
        
          
          column(12, 
               h6("Average Length of Cycle is calculated as:"), 
                         helpText("From first day of your period to the first day of your next period. Ranges from: 22 to 44. Leave 28 if unsure") 
                ),
      
          column(12,
              submitButton("Get Fertile Window")
                )
    )),
      
      
  mainPanel(
    h3("Ovulation Calculator Results"),
    
    h5(textOutput("text1")),
    h5(textOutput("text2")),
    p(),
    p(),
    h4(textOutput("text3")),
    tags$head(tags$style("#text3{color: blue;
                                 font-size: 20px;
                         font-style: italic;
                         }"
    
    ))
    )    
   
)
)




        