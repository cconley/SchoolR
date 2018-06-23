#' These function loads the Board Color palettes which includes:
#'
#'     Board_cols():
#'        turquoise, orange, yellow, burgundy, blue, grey, green
#'
#'     Board_pal():
#'          main  = blue, green, yellow
#'          cool  = blue, green
#'          hot   = yellow, orange, burgundy),
#'          mixed = blue, green, yellow, orange, burgundy),
#'          grey  = light grey, dark grey)
#'
#'    Board_scale_color()
#'
#'    Board_scale_fill()
#'
#' #Use https://coolors.co/ to get color tints

Board_colors <- c(
  `turquoise`  = "#00B1cf",
  `orange`     = "#f7941e",
  `yellow`     = "#ffdd00",
  `burgundy`   = "#971a31",
  `blue`       = "#0056a2",
  `grey`       = "#636466",
  `green`      = "#2faa44"
)

Board_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (Board_colors)

  Board_colors[cols]
}


Board_palettes <- list(
  `main`  = Board_cols("blue", "green", "yellow"),
  `cool`  = Board_cols("blue", "green"),
  `hot`   = Board_cols("yellow", "orange", "burgundy"),
  `mixed` = Board_cols("blue", "green", "yellow", "orange", "burgundy"),
  `grey`  = Board_cols("light grey", "dark grey")
)

#' Return function to interpolate a drsimonj color palette
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
Board_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- Board_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


#' Color scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
Board_scale_color <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- Board_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("Board_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
Board_scale_fill <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- Board_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("Board_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

