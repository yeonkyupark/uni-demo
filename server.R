server <- function(input, output, session) {
  get_data <- reactive({
    dbReadTable(con, tbl_name)
  })
  
  output$pg_tbl <- renderDataTable({
    datatable(get_data())
  })
} # server