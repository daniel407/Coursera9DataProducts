shinyUI(
      
      pageWithSidebar(
            
            headerPanel("Calculation of gravitational force"),
            
            sidebarPanel(
                  h4('Documentation: How to use'),
                  p('This very simple app is designed to calculate the gravitional force of an object of certain mass on a particular planet.'),
                  p('On the panel on the right side of this page, select a value for the mass in the slider, choose a planet in the selection below the slider and click the button to perform the calculation. The gravitational force will be displayed in units of Newton.'),
                  p('The server calculation is mass * g, where g is the gravitational constant of the chosen planet. Enjoy!')
            ),
            
            mainPanel(
                  
                  sliderInput("mass", "mass (kg):",min = 0, max = 1000, value = 0),
                  selectInput('planet', 'planet', c("earth","moon", "mars","jupiter"), multiple = FALSE, selectize = TRUE, width = NULL),
                  submitButton('Calculate!'),
                  
                  h3('Force calculation'),
                  h4('An object of mass (kg)'),
                  verbatimTextOutput("inputValueMass"),
                  h4('on the planet'),
                  verbatimTextOutput("inputValuePlanet"),
                  h4('the gravitational force is'),
                  verbatimTextOutput("prediction"),
                  h4("Newton")
                  
            )
      )      
      
)