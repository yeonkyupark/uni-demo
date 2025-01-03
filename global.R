pacman::p_load(
  "shiny", "shinydashboard",
  "pool", "DBI", "RSQLite", "DT",
  "tidyverse",
  "config"
)

db <- config::get("db")
db_name <- db$db_name
tbl_name <- db$tbl_name

con <- dbConnect(
  SQLite(),
  dbname = db_name
)

source("ui.R")
source("server.R")
shinyApp(ui = ui, server = server)
