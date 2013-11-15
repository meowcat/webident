
# Shiny cap flow calculator

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Batch substance lookup"),
  sidebarPanel(
    fileInput('substances', 'Upload CSV File',
                accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
    selectInput("sourcecol", "Source column", c("-")),
    selectInput("sourcetype", "Source type", c(validFromStandard, validFrom)),
    selectInput("resultfields", "Requested result fields",
                c(validToStandard, validTo),multiple=TRUE),
    
    
    checkboxGroupInput("addfields","Additional requested fields",
                       c("SMILES" = "smiles", "Exact mass" = "exactmass",
                         "Formula" = "formula"),
                       c("SMILES", "Exact mass", "Formula")),
    actionButton("process", "Process")
    ),
  mainPanel(
  tabsetPanel(
    tabPanel("Input substances",
             tableOutput("substances")),
    tabPanel("Results",
             tableOutput("results"))

    ) )
  
    ))