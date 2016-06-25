library(shiny)
BPCategory <- function(systolic ,diastolic)  {
  if (systolic > 180 | diastolic > 110)  {'Hypertensive Crisis - Emergency Care Needed'} 
else
  if (systolic >= 160  | diastolic >= 100)  {'High Blood Pressure - (Hyperstension)Stage 2'}
else  
  if (systolic >= 140 | diastolic >= 90) {'High Blood Pressure - (Hypertension)Stage 1'}
else  
  if (systolic >= 120 | diastolic >= 80) {'Prehypertension'}
else
  if (systolic < 120 & diastolic < 80)  {'Normal'}
  
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$systolic})
    output$inputValue2 <- renderPrint({input$diastolic})
    output$prediction <- renderPrint({BPCategory(input$systolic,input$diastolic)
  }
)
}
)
