shinyServer(function(input, output) {
  output$input <- renderText({
    paste("With inital velocity as  ", "<strong>",input$initvel,"</strong>", " m/s ,final velocity as ", "<strong>",input$finalvel, "</strong>"," m/s and time as ", "<strong>",input$time_taken,"</strong>" ," seconds ")
  })
  
  output$result <- renderText({
    a <- (input$finalvel-input$initvel)/input$time_taken
    
    paste("Acceleration is ", "<strong>",round(a, 2),"</strong>"," m/s^2","</br>","</br>","In other units -" ,"</br>",
    "</br>","Acceleration is ", "<strong>",round(a, 2)*3.6,"</strong>"," km/h^2",
    "</br>","Acceleration is ", "<strong>",round(a, 2)*2.237,"</strong>"," mi/h^2")
    
  })

})