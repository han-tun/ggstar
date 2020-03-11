#' Key drawing functions
#'
#' Each Geom has an associated function that draws the key when the geom needs
#' to be displayed in a legend. These are the options built into ggplot2.
#'
#' @param data A single row data frame containing the scaled aesthetics to
#'      display in this key
#' @param params A list of additional parameters supplied to the geom.
#' @param size Width and height of key in mm.
#' @return A grid grob.
#' @rdname draw_key
#' @name draw_key
#' @export
#' @importFrom scales alpha
#' @importFrom grid polygonGrob gpar
draw_key_star <- function(data, params, size){
    stargrid(x=0.5, y=0.5,
             size=data$size*.pt/10, 
             gp=gpar(fill=alpha(data$fill, data$alpha),
                     col =alpha(data$colour, data$alpha)))
}