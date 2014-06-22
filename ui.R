#Define UI for heart attack prediction application
shinyUI(
pageWithSidebar(
#Application title
  headerPanel("Heart attack prediction"),
  sidebarPanel(
    numericInput('cholesterol', 'cholesterol mg/dl',value = 200, min = 50, max = 300, step = 5),
    submitButton('Submit')
  ),
  mainPanel(
	h3('Results of prediction'),
	h4('Prediction Algorithm: Less than 200 - no risk, 200 to 239 - borderline high risk, 240 and above - high risk'),
	h4('Cholesterol entered'),
	verbatimTextOutput("inputValue"),
	h4('which resulted in a prediction of '),
	verbatimTextOutput("prediction")
  )
)
)