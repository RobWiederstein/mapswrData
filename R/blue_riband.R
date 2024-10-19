#' Award for the fastest transatlantic crossing by ship 1838 - 1952
#'
#' A dataset containing the winners of the Blue Riband award for the fastest transatlantic crossing by a passenger liner.
#'
#' @format A data frame with 117 rows and 18 variables:
#' \describe{
#'	\item{ship}{ship}
#'	\item{heading}{heading or direction}
#'	\item{line}{ship line}
#'	\item{start_date}{start date in ISO format}
#'	\item{end_date}{end date in ISO format}
#'	\item{from_city}{city of origination}
#'	\item{from_country}{country of origination}
#'	\item{from_lat}{latitutde of origination}
#'	\item{from_lng}{longitude of origination}
#'	\item{to_city}{city of destination}
#'	\item{to_country}{country of destination}
#'	\item{to_lat}{latitude of destination}
#'	\item{to_lng}{longitude of destination}
#'	\item{dist_nm}{distance in nautical miles}
#'	\item{dist_km}{distance in kilometers}
#'	\item{knots}{knots}
#'	\item{km_h}{kilometers per hour}
#'	\item{duration_hours}{duration in hours}
#' }
#'
#' @details  The dataset was scraped from the Wikipedia entry for "Blue Riband" and consisted of an eastbound and westbound table.
#'
#' Transatlantic trips occurred often and began in the late 1400s.  By sail, the eastward trip took about 30 to 45 days and the westward trip 65 to 90 days.  From wikipedia, "The Blue Riband is an unofficial accolade given to the passenger liner crossing the Atlantic Ocean in regular service with the record highest average speed. The record is based on average speed rather than passage time because ships follow different routes."
#'
#' Eastbound and westbound trips are treated differently as eastbound passages are assisted by the Gulf Stream and favorable weather systems. The significance of the Blue Riband dataset is that it documents the evolution from sail to steam to diesel.  Transport speeds were seen as militarily strategic and economically important. Thus, many nations funded the building of the ships.
#'
#' The flag column was omitted as it consisted of an image.
#'
#' @source https://en.wikipedia.org/wiki/Blue_Riband
#'
#' @examples
#' data("blue_riband")
#'
"blue_riband"
