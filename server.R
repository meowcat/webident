# Shiny cap flow calculator
source("webAccess.R")



processInput <- function(input, type)
{
  # Get InChI keys of everything
  keys <- lapply(input, function(line)
    {
    getCtsKey(line, type)
  })
  # choose best key: most abundant first part, no stereo information
  keys <- lapply(keys, function(key)
    {
    if(is.null(key))
      return(NULL)
    s <- strsplit(key, '-')
    p1 <- unlist(lapply(s, function(k) k[[1]]))
    p1.best <- names(table(p1))[[1]]
    s <- s[which(p1 == p1.best)]
    key <- key[which(p1 == p1.best)]
    p2 <- unlist(lapply(s, function(k) k[[2]]))
    p2.best <- match("UHFFFAOYSA", p2, nomatch = 0)
    if(p2.best == 0)
      p2.best <- 1
    return(key[[p2.best]])
  })
  # Get records of everything
  recs <- lapply(keys, function(key) getCtsRecord(key))
  return(recs)  
}

formatResults <- function(data, fields)
{
  rows <- lapply(data, function(cpd)
    {
    c("exactmass" = cpd$exactmass,
      "inchikey" = cpd$inchikey,
      "formula" = cpd$formula
      )
  })
  table <- do.call(rbind, rows)
  return(table)
}


shinyServer(function(input, output, session) {
  
  substances <- reactive({
    f <- input$substances
    if(is.null(f))
      return(NULL)
    s <- read.csv(f$datapath, sep=",", header=TRUE)
  })


  observe({
    s <- substances()
    if(is.null(s))
      return(data.frame())
    headers <- colnames(s)
    updateSelectInput(session, "sourcecol", "Source column",
                      headers)
    
  })
  
  
  results <- reactive({
    input$process
    if(is.null(input$process))
      return(data.frame())
    s <- isolate(substances())
    sourcecol <- isolate(input$sourcecol)
    sourcetype <- isolate(input$sourcetype)
    resultfields <- isolate(input$resultfields)
    
    if(is.null(s))
      return(data.frame())
    # process all
    r <- processInput(s[,sourcecol], sourcetype)
    # make the output
    o <- formatResults(r, resultfields)
    return(o)
  })
  
  output$results <- renderTable(results())
  output$substances <- renderTable(substances())
  
  
})