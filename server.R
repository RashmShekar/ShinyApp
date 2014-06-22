heartAttack <- function(cholesterol) {if (cholesterol<200) "no risk of heart attack" else (if (cholesterol>199 & cholesterol<240) "Borderline high risk of heart attack" else "high risk of heart attack")}
#Define server logic required to predict heart attack
shinyServer(
  function(input, output) {
    # Display input value of cholesterol and predicted heart attack risk level
    output$inputValue <- renderPrint({input$cholesterol})
    output$prediction <- renderPrint({heartAttack(input$cholesterol)})    
  }
)