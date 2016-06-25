library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Predict Blood Pressure Category"),
    sidebarPanel(
     numericInput('systolic', 'Systolic(Upper #)', 118, min = 80, max = 200, step = 5),                                                                              numericInput('diastolic', 'Diastolic(Lower #)', 78, min = 60, max = 120, step = 5),

     submitButton('Submit')
    ),
    mainPanel(
        h3('Results of prediction'),
        h4('You entered'),
        verbatimTextOutput("inputValue1"),
        verbatimTextOutput("inputValue2"),
        h4('Which resulted in a prediction of '),
        verbatimTextOutput("prediction")
    )
  )
)
