#' @title Cities along Napolean's march to and from Moscow 1812
#'
#' @description Charles Joseph Minard's famous graphic of Napolean's march to Moscow contains these cities along the route.
#'
#' @format A data frame with 20 rows and three variables:
#' \describe{
#'   \item{city}{city name}
#'   \item{lon}{longitude}
#'   \item{lat}{latitude}
#'}
#'
#' @source https://vincentarelbundock.github.io/Rdatasets/doc/HistData/Minard.temp.html; https://www.cs.uic.edu/~wilkinson/TheGrammarOfGraphics/minard.txt
#'
#' @seealso \code{\link{minard_temps}} for the temperature data and \code{\link{minard_troops}} for the troop data.
#'
#' @references Minard, Charles Joseph. 1869. "Tableaux graphiques et cartes figuratives." Paris: Hachette.
#'
#' @examples
#' minard_cities
"minard_cities"

#' @title French Army survivors after key battles to and from Moscow 1812
#'
#' @description Charles Joseph Minard's famous graphic of Napolean's march to Moscow shows the dwindling number of French Army troops.
#'
#' @details Napoleon's invasion and subsequent retreat from Russia is notable for the significant loss of life.  While exact numbers are elusive, historians estimate that Napoleon began the campaign with 450,000 troops and ended with 120,000.  Napoleon's eastward progress ended in Moscow in November of 1812.  Inadequate supplies required the French Army to retreat but only after the onset of winter like conditions.  Frigid temperatures and disease decimated the remaining army.  Charles Joseph Minard, an early pioneer in visualization, captured the French Army's losses in his famous graphic that has been called "the best statistical graphic ever drawn" by Edward Tufte.
#'
#' @format A data frame of 51 rows and five variables:
#' \describe{
#'   \item{survivors}{numeric value of French Army survivors}
#'   \item{direction}{a factor with levels A ("Advance") and R ("Retreat")}
#'   \item{group}{group}
#'   \item{lon}{longitude}
#'   \item{lat}{latitude}
#'}
#'
#' @source  https://vincentarelbundock.github.io/Rdatasets/doc/HistData/Minard.troops.html; https://www.cs.uic.edu/~wilkinson/TheGrammarOfGraphics/minard.txt
#'
#' @seealso \code{\link{minard_cities}} for the city data and \code{\link{minard_temps}} for the temperature data.
#'
#' @references
#' - Friendly, M. (2002). Visions and Re-visions of Charles Joseph Minard, Journal of Educational and Behavioral Statistics, 27, No. 1, 31-51.
#' - Friendly, M. (2003). Re-Visions of Minard. http://datavis.ca/gallery/re-minard.html
#' - Minard, Charles Joseph. 1869. "Tableaux graphiques et cartes figuratives." Paris: Hachette.
#' - Arthur H. Robinson (1967), "The Thematic Maps of Charles Joseph Minard", Imago Mundi, Vol. 21, (1967), pp. 95–108
#' - Edward Tufte (1983), "The Visual Display of Quantitative Information", Graphics Press, Cheshire, Connecticut.
#'
#' @examples
#' minard_troops
"minard_troops"

#' @title Temperature data along Napolean's march to and from Moscow 1812
#'
#' @details Original documentation of this dataset directs the date to be set to the year 1815. Historical context suggests that the data is from 1812 and the year was set as such.
#'
#' @description  Temperature played a key role in the French Army's casualties as the cold Russian winters took a toll.
#'
#' @format A data frame of 8 observations of four variables:
#' \describe{
#'   \item{date}{date in the format of "YYYY-MM-DD"}
#'   \item{temp}{temperature}
#'   \item{days}{number of days on the retreat march}
#'   \item{lon}{longitude}
#'}
#'
#' @source  https://vincentarelbundock.github.io/Rdatasets/doc/HistData/Minard.troops.html; https://www.cs.uic.edu/~wilkinson/TheGrammarOfGraphics/minard.txt
#'
#' @seealso \code{\link{minard_cities}} for the city data and \code{\link{minard_troops}} for the troop data.
#'
#' @references Minard, Charles Joseph. 1869. "Tableaux graphiques et cartes figuratives." Paris: Hachette.
#'
#' @examples
#' minard_temps
"minard_temps"
