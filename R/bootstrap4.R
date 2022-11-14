#' Load Dependency
#'
#' @return
#' @export
loadFontAwesome <- function() {

  list(
    # Custom CSS
    htmltools::htmlDependency(
      name = "summarybox-style",
      version = "0.1.0",
      src = "css",
      package = "summaryBox",
      stylesheet = "style.css"
    )

  )

}


#' Info / Value Box in Shiny Apps and RMarkdown
#'
#' @param title Text to be shown in the box
#' @param value Value to be shown in the box
#' @param width Width of Box. width = 4 means 3 boxes can be fitted (12 / 4)
#' @param icon Font Awesome 5 icons. E.g. "fas fa-chart-bar"
#' @param style Either "primary", "secondary", "info", "success", "danger", "warning"
#' @param border Either "left", "bottom"
#'
#' @return
#' @export
#'
#' @examples
#' library(shiny)
#' library(summaryBox)
#'
#' theme <- bslib::bs_theme(version = 4)
#'
#' # UI
#' ui <- fluidPage(
#'
#'   theme = theme,
#'
#'   br(),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'
#'   ),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info", border = "bottom"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success", border = "bottom"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger", border = "bottom"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary", border = "bottom")
#'
#'   ),
#'
#'
#'   fluidRow(
#'     summaryBox2("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox2("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox2("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox2("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   ),
#'
#'   br(),
#'
#'   # Info Box
#'   fluidRow(
#'     summaryBox3("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox3("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox3("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox3("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   )
#'
#' )
#'
#' # Server
#' server <- function(input, output, session) {
#'
#'
#' }
#'
#' # Run App
#' shinyApp(ui = ui, server = server)
#'
summaryBox <- function(title, value, width = 4, icon = "fas fa-chart-bar", style = "info", border = "left") {

  infotag <- tags$div(
    class = paste0("col-md-", width),
    style = "margin-top: 40px; margin-bottom: 40px;",
    tags$div(
      class = paste0("card border-", border, "-", style, " shadow h-100 py-2"),
      tags$div(
        class = "card-body",
        tags$div(
          class = "row no-gutters align-items-center",
          tags$div(
            class = "col mr-2",
            tags$div(
              class = paste0("text-xs font-weight-bold text-", style, " text-uppercase mb-1"),
              toupper(title)
            ),
            tags$div(
              class = "h5 mb-0 font-weight-bold text-gray-800",
              value
            )
          ),
          tags$div(
            class = "col-auto",
            fontawesome::fa(icon, height = "4em", fill = "#dddfeb")
          )
        )
      )
    )
  )

  htmltools::htmlDependencies(infotag) <- loadFontAwesome()
  return(infotag)
}

#' Info / Value Box in Shiny Apps and RMarkdown
#'
#' @param title Text to be shown in the box
#' @param value Value to be shown in the box
#' @param width Width of Box. width = 4 means 3 boxes can be fitted (12 / 4)
#' @param icon Font Awesome 5 icons. E.g. "fas fa-chart-bar"
#' @param style Either "primary", "secondary", "info", "success", "danger", "warning", "light", "dark"
#' @param border Either "left", "bottom"
#'
#' @return
#' @export
#'
#' @examples
#' library(shiny)
#' library(summaryBox)
#'
#' theme <- bslib::bs_theme(version = 4)
#'
#' # UI
#' ui <- fluidPage(
#'
#'   theme = theme,
#'
#'   br(),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'
#'   ),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info", border = "bottom"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success", border = "bottom"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger", border = "bottom"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary", border = "bottom")
#'
#'   ),
#'
#'
#'   fluidRow(
#'     summaryBox2("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox2("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox2("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox2("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   ),
#'
#'   br(),
#'
#'   # Info Box
#'   fluidRow(
#'     summaryBox3("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox3("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox3("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox3("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   )
#'
#' )
#'
#' # Server
#' server <- function(input, output, session) {
#'
#'
#' }
#'
#' # Run App
#' shinyApp(ui = ui, server = server)
summaryBox2 <- function(title, value, width = 4, icon = "fas fa-chart-bar", style = "info") {

  infotag <- tags$div(
    class = paste0("col-md-", width),
    style = "margin-top: 40px; margin-bottom: 40px;",
    tags$div(
      class = paste("card-counter", style),
      fontawesome::fa(icon, height="4em"),
      tags$span(
        class = "count-numbers",
        value
      ),
      tags$span(
        class = "count-name",
        title
      )
    )
  )

  htmltools::htmlDependencies(infotag) <- loadFontAwesome()
  return(infotag)

}

#' Info / Value Box in Shiny Apps and RMarkdown
#'
#' @param title Text to be shown in the box
#' @param value Value to be shown in the box
#' @param width Width of Box. width = 4 means 3 boxes can be fitted (12 / 4)
#' @param icon Font Awesome 5 icons. E.g. "fas fa-chart-bar"
#' @param style Either "primary", "secondary", "info", "success", "danger", "warning"
#' @param border Either "left", "bottom"
#'
#' @return
#' @export
#'
#' @examples
#' library(shiny)
#' library(summaryBox)
#'
#' theme <- bslib::bs_theme(version = 4)
#'
#' # UI
#' ui <- fluidPage(
#'
#'   theme = theme,
#'
#'   br(),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'
#'   ),
#'
#'   fluidRow(
#'
#'     summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info", border = "bottom"),
#'     summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success", border = "bottom"),
#'     summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger", border = "bottom"),
#'     summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary", border = "bottom")
#'
#'   ),
#'
#'
#'   fluidRow(
#'     summaryBox2("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox2("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox2("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox2("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   ),
#'
#'   br(),
#'
#'   # Info Box
#'   fluidRow(
#'     summaryBox3("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
#'     summaryBox3("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
#'     summaryBox3("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
#'     summaryBox3("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
#'   )
#'
#' )
#'
#' # Server
#' server <- function(input, output, session) {
#'
#'
#' }
#'
#' # Run App
#' shinyApp(ui = ui, server = server)
summaryBox3 <- function(title, value, width = 4, icon = "fas fa-dollar-sign", style = "info") {

  infotag <- tags$div(
    class = paste0("col-md-", width),
    style = "margin-top: 40px; margin-bottom: 40px;",
    tags$div(
      class = paste0("card border-", style, " mx-sm-1 p-3"),
      tags$div(style = "width: 100%; margin-top:-45px;", align="center",
        tags$div(
          style = "width: 75px",
          class = paste0("card border-", style, " shadow text-", style, " p-3 my-card"),
          tags$span(
            class = "myicon",
            `aria-hidden` = "true",
             fontawesome::fa(icon, height = "2em")
          )
        )
      ),
      tags$div(
        class = paste0("text-", style, " text-center mt-3"),
        tags$h4(title)
      ),
      tags$div(
        class = paste0("text-", style, " text-center mt-2"),
        tags$h1(value)
      )
    )
  )

  htmltools::htmlDependencies(infotag) <- loadFontAwesome()
  return(infotag)
}
