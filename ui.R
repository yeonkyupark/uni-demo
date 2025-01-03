ui <- dashboardPage(

# header ------------------------------------------------------------------
  dashboardHeader(
    title = "Uni-Demo"
    
  ), # dashboardHeader (
# sidebar -----------------------------------------------------------------
  dashboardSidebar(
    sidebarMenu(
      menuItem("Penquins Table", tabName = "tab_pg_tbl", icon = icon("dashboard"))
    ) # sidebarMenu(
    
  ), # dashboardSidebar(
# body --------------------------------------------------------------------
  dashboardBody(

# tab_pg_tbl --------------------------------------------------------------
    tabItems(
      # First tab content
      tabItem(tabName = "tab_pg_tbl",
              fluidRow(
                column(width = 12,
                       dataTableOutput("pg_tbl")
                )
              )
      ) # tabItem(tabName = "dashboard",
    ) # tabItems(
  ) # dashboardBody(
)




