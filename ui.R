
shinyUI(fluidPage(
  titlePanel("Acceleration Calculator"),
  
  sidebarLayout(sidebarPanel(
    
    helpText("The Acceleration, in physics, is the rate of change of velocity of an object with respect to time. 
An object's acceleration is the net result of any and all forces acting on the object, as described by Newton's Second Law.
             The SI unit for acceleration is metre per second squared (m/s^2). (Wikipedia)"),
    
    numericInput(
      inputId = "initvel",
      label = strong("Input initial velocity of the object (in metre/sec):"),
      value = 70
    ),
    
    numericInput(
      inputId = "finalvel",
      label = strong("Input final velocity of the object (in metre/sec):"),
      value = 80
    )
    ,
    numericInput(
      inputId = "time_taken",
      label = strong("Input duration of motion (in seconds):"),
      value = 80
    )
    ),
    
    mainPanel(
      uiOutput("input"),
      uiOutput("result")
      
    )
    )
))