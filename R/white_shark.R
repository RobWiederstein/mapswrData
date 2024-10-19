#' White shark tracking data near Guadulope Island 2015 - 2019
#'
#'  A dataset containing coordinates for 10 great white sharks near Guadulope Island, Mexico, including depth.
#'
#' @format A data frame with 322 rows and 10 variables:
#'  \describe{
#'   \item{shark}{shark ID}
#'   \item{date_hour}{date and hour}
#'   \item{obs}{observations}
#'   \item{n}{nunmber of observations within original time increment}
#'   \item{mean_depth}{mean depth in meters}
#'   \item{lat}{latitude}
#'   \item{lng}{longitude}
#'   \item{mean_shore_distance}{mean distance from shore in meters}
#'   \item{length}{length of shark in meters}
#'   \item{sex}{sex of shark}
#'  }
#'
#' @details Guadulope Island, off the coast of Mexico, is renown for its ecotourism around great white shark cage diving. The data was included because of the `depth` variable. The original dataset was +28,000k observations with the tracking device giving a reading nearly 20 times a minute.  Here, the data were summarized to the hour.
#'
#' @source https://www.seanoe.org/data/00722/83385/
#'
#' @references Santana-Morales, O., Hoyos-Padilla, E. M., Medellín-Ortíz, A., Sepulveda, C., Beas-Luna, R., Aquino-Baleytó, M., ... & Castillo-Géniz, J. L. (2021). How much is too much? A carrying capacity study of white shark cage diving in Guadalupe Island, Mexico. Marine Policy, 131, 104588.
#' @examples
#' data(white_shark)
"white_shark"

