
lookup_g = function(planet_name){
      g_values = data.frame(planet=c("earth","moon","mars","jupiter"), g=c(9.807, 1.62519, 3.711,24.79))
      g_values$g[g_values$planet==planet_name]
}

calculate_force = function(acceleration, mass){
      acceleration*mass
}

shinyServer(

      
      
      
      function(input, output){
            
            
            output$inputValueMass = renderPrint({input$mass})
            output$inputValuePlanet = renderText({input$planet})
            
            
            
            output$prediction = renderText(calculate_force(lookup_g(input$planet),input$mass))

            
      }      
      
)