library(shiny)
library(shinydashboard)
library(magrittr)

header <- dashboardHeader(title = "Singularity Event")

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Mainpage", tabName = "mainpage", icon = icon("dashboard")),
    menuItem("Lab 1", tabName = "lab1", icon = icon("flask")),
    menuItem("Lab 2", tabName = "lab2", icon = icon("flask"))
  )
)

body <- dashboardBody(
  tabItems(
    # First tab content
    tabItem(tabName = "mainpage",
            h2("Aims"),
            p("Aim of the event goes here..."),
            h2("Goals"),
            p("Goal of the event goes here..."),
            h2("Timeline"),
            p("Timeline of the event goes here...")
    ),
    # Second tab content
    tabItem(tabName = "lab1",
            fluidRow(
              # assuming we have two members in the lab
              box(title = "Member 1", width = 6, solidHeader = TRUE,
                  p("Answers go here..."),
                  img(src = "link_to_member1_image", height = "100px", width = "100px")
              ),
              box(title = "Member 2", width = 6, solidHeader = TRUE,
                  p("Answers go here..."),
                  img(src = "link_to_member2_image", height = "100px", width = "100px")
              )
            )
    ),
    # Third tab content
    tabItem(tabName = "lab2",
            fluidRow(
              # assuming we have two members in the lab
              box(title = "Member 1", width = 6, solidHeader = TRUE,
                  p("Answers go here..."),
                  img(src = "link_to_member1_image", height = "100px", width = "100px")
              ),
              box(title = "Member 2", width = 6, solidHeader = TRUE,
                  p("Answers go here..."),
                  img(src = "link_to_member2_image", height = "100px", width = "100px")
              )
            )
    )
  )
)

shinyApp(
  ui = dashboardPage(header, sidebar, body),
  server = function(input, output) { }
)
