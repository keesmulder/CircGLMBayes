#' cglmShiny
#'
#' Run a shiny app interface for this package. Provides a point-and-click
#' interface where the user can load their own data.
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' cglmShiny()
#' }
#' 
cglmShiny <- function() {
  appDir <- system.file("shiny", package = "circglmbayes")
  if (appDir == "") {
    stop("Could not find shiny directory. Try re-installing `circglmbayes`.",
         call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
