% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dashboardNavbar.R
\name{bs4UserMenu}
\alias{bs4UserMenu}
\title{Create a Bootstrap 4 user profile.}
\usage{
bs4UserMenu(
  ...,
  name = NULL,
  src = NULL,
  title = NULL,
  subtitle = NULL,
  footer = NULL,
  status = c("primary", "danger", "success", "warning", "info", "secondary")
)
}
\arguments{
\item{...}{Body content.}

\item{name}{User name.}

\item{src}{User profile picture.}

\item{title}{A title.}

\item{subtitle}{A subtitle.}

\item{footer}{Footer is any.}

\item{status}{Ribbon status: "primary", "danger", "success", "warning", "info" and 
"secondary".}
}
\description{
Create a Bootstrap 4 user profile.
}
\examples{
if (interactive()) {
 library(shiny)
 library(bs4Dash)
 
 shinyApp(
  ui = dashboardPage(
    navbar = dashboardHeader(
      rightUi = bs4UserMenu(
       name = "Divad Nojnarg", 
       status = "primary",
       src = "https://adminlte.io/themes/AdminLTE/dist/img/user2-160x160.jpg", 
       title = "bs4Dash",
       subtitle = "Author", 
       footer = p("The footer", class = "text-center"),
       "This is the menu content."
      )
    ),
    sidebar = dashboardSidebar(),
    body = dashboardBody(),
    title = "bs4UserMenu"
  ),
  server = function(input, output) {}
 )
}

}
