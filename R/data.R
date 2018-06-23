#' School Days of the year
#'
#' A dataset containing the date associated with each day of the school-year for elementary and secondary schools in Ontario that adhere to
#' a regular calendar and a modified calendar.  There will be variations from board to board according to each board's designation of PA days.
#' This is intended to be a starting point but may warrant a review for confirmation that the dates apply to a specific school board.
#' diamonds.
#'
#' @format A tibble with 187 rows and 9 variables:
#' \describe{
#'   \item{SchoolDay}{Day number for the school year (ranges from 1, the first day of school, to 187, the last day of school)}
#'   \item{EleReg_}{Dates for elementary school following a regular calendar}
#'   \item{EleMod_}{Dates for elementary school following a modified calendar}
#'   \item{SecReg_}{Dates for secondary school following a regular calendar}
#'   \item{SecMod_}{Dates for secondary school following a modified calendar}
#'   ...
#' }
#' @source \url{https://ddsb.ca/Students/SchoolYearCalendars/Pages/Default.aspx}
"SchoolDays"
