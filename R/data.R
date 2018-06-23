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



#' Secondary Course list
#'
#' A dataset containing course codes for secondary courses in Ontario, Canada.
#' This data was scraped from Ministry of Education Documents in the spring of 2018.  While this is intended to be comprehensive, it can not be
#' an exhaustive as there are new courses added or modified every year. While this will cover the majority of courses, it will be necessary to
#' include additional courses.  Feel free to contact chris at cconley dot ca with courses you find are missing.
#'
#' @format A tibble with 1992 rows and 11 variables:
#' \describe{
#'   \item{COURSE}{5 digit course code.  First three digits define the course, 4th digit defines the course grade, 5th digit defines the course program (academic, applied etc.)}
#'   \item{COURSE3}{3 digit course code.  First three digits that define the course}
#'   \item{SECTIONID}{Generally the first digit of the course code that defines the course section}
#'   \item{SECTION_LABEL}{Readable label of the course section}
#'   \item{COURSE_DESCRIPTION}{Full title of the course}
#'   \item{SECTION_TYPE}{Short Course title}
#'   \item{SECTION_TYPE_DESCRIPTION}{Short Description of course}
#'   \item{GRADE}{Course grade (4th digit of the course code)}
#'   \item{PATHWAY}{Description of the course pathway (academic, applied, university, college etc.), 5th digit of the course code}
#'   \item{PATHWAY_CHAR}{Short pathway description}
#'   \item{STEM}{Course coded according to whether it is Science, Technology, Engineering or Mathematics}
#'   ...
#' }
#' @source {Scraped from Ontario Ministry of Education documents}
"SecondaryCourses"
