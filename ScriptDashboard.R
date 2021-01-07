library(shiny)
library(shinydashboard)


ui <- dashboardPage(
  dashboardHeader(
    title = "Shiny"
  ),
  
  dashboardSidebar(
    sidebarMenu(id="sbmenu",
                menuItem("menu1_",tabName = "menu1" ,
                         menuSubItem('Sub Menu 1', tabName = 'menu11'),
                         menuSubItem('Sub Menu 2', tabName = 'menu12'),
                         menuSubItem('Sub Menu 3', tabName = 'menu13')
                ),
                
                menuItem("menu2_",tabName = "menu2" ,
                         menuSubItem('Sub Menu 1', tabName = 'menu21'),
                         menuSubItem('Sub Menu 2', tabName = 'menu22'),
                         menuSubItem('Sub Menu 3', tabName = 'menu23')
                ),
                
                menuItem("menu3_",tabName = "menu3" ,
                         menuSubItem('Sub Menu 1', tabName = 'menu31'),
                         menuSubItem('Sub Menu 2', tabName = 'menu32'),
                         menuSubItem('Sub Menu 3', tabName = 'menu33')
                ),
                
                menuItem("menu4_",tabName = "menu4" ,
                         menuSubItem('Sub Menu 1', tabName = 'menu41'),
                         menuSubItem('Sub Menu 2', tabName = 'menu42'),
                         menuSubItem('Sub Menu 3', tabName = 'menu43')
                ),
                
                menuItem("menu5_",tabName = "menu5" ,
                         menuSubItem('Sub Menu 1', tabName = 'menu51'),
                         menuSubItem('Sub Menu 2', tabName = 'menu52'),
                         menuSubItem('Sub Menu 3', tabName = 'menu53')
                ),
                
                menuItem("menu6_",tabName = "menu6",
                         menuSubItem('Sub Menu 1', tabName = 'menu61'),
                         menuSubItem('Sub Menu 2', tabName = 'menu62'),
                         menuSubItem('Sub Menu 3', tabName = 'menu63')
                )
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem("menu11",h1("Pagina 1 en construccion")),
      tabItem("menu12",h1("Pagina 2 en construccion")),
      tabItem("menu13",h1("Pagina 3 en construccion")),
      
      tabItem("menu21",h1("Pagina 1 en construccion")),
      tabItem("menu22",h1("Pagina 2 en construccion")),
      tabItem("menu23",h1("Pagina 3 en construccion")),
      
      tabItem("menu31",h1("Pagina 1 en construccion")),
      tabItem("menu32",h1("Pagina 2 en construccion")),
      tabItem("menu33",h1("Pagina 3 en construccion")),
      
      tabItem("menu41",h1("Pagina 1 en construccion")),
      tabItem("menu42",h1("Pagina 2 en construccion")),
      tabItem("menu43",h1("Pagina 3 en construccion")),
      
      tabItem("menu51",h1("Pagina 1 en construccion")),
      tabItem("menu52",h1("Pagina 2 en construccion")),
      tabItem("menu53",h1("Pagina 3 en construccion")),
      
      tabItem("menu61",h1("Pagina 1 en construccion")),
      tabItem("menu62",h1("Pagina 2 en construccion")),
      tabItem("menu63",h1("Pagina 3 en construccion"))
    )
  )
)

server <- function(input, output) {
  observe(print(input$sbmenu))
}

shinyApp(ui,server)