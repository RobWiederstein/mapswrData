#' @title Capital bikeshare stations September 2024
#'
#' @description  Capital bikeshare stations within Washington D.C. for September 2024.
#'
#' @format a dataframe of 397 rows and four variables
#' \describe{
#'   \item{id}{five digit identifier of bikeshare stations}
#'   \item{name}{name of bikeshare stations, usually the nearest intersection}
#'   \item{lon}{longitude of bikeshare stations}
#'   \item{lat}{latitude of bikeshare stations}
#'}
#'
#' @source https://s3.amazonaws.com/capitalbikeshare-data/index.html According to the [license](https://ride.capitalbikeshare.com/data-license-agreement) Bikeshare hereby grants to you a non-exclusive, royalty-free, limited, perpetual license to access, reproduce, analyze, copy, modify, distribute in your product or service and use the Data for any lawful purpose
#'
#' @references Lyft Bikes and Scooters, LLC (2020). Capital Bikeshare System Data. Last accessed October 26, 2024.
#'
#' @examples
#' bkshr_sites
"bkshr_sites"
