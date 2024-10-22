#' Red tides in the Gulf of Mexico 1953 to 2023
#'
#'  Water samples with concentration of karenia brevis in U.S. territorial waters 1953 to 2023.
#'
#' @format A tibble of class `tbl_df/tbl/data.frame` with 46,234 rows and 7 columns:
#' \describe{
#'   \item{state_id}{a two letter abbreviation for one of four states: Alabama, Florida, Mississippi or Texas.}
#'   \item{description}{description of where the water sample was taken}
#'   \item{latitude}{latitude}
#'   \item{longitude}{longitude}
#'   \item{sample_date_time}{water sample date and time}
#'   \item{category}{an ordered factor variable with levels: "very low", "low", "medium", "high"}
#'   \item{cellcount}{cellcount of karenia brevis per liter}
#' }
#'
#' @details Red tides, also known as "Harmful Algal Blooms," are common in the Gulf of Mexico and particularly southwest Florida.  The bloom consists of the algae _karenia brevis_ and results in oxygen depletion in the water and an accompanying fish kill.  These blooms can cause lung irritation in those either on or adjacent to the water. Numerous reports of food poisoning and even deaths have been attributed to those consuming fish or shellfish during or after a red tide.  Because of the economic impact and health implications, _karenia brevis_ monitoring began in 1953 and continues to this date. With the warming of the Gulf of Mexico, the frequency and intensity of red tides are expected to increase.  For more information, see the [HABSOS](https://habsos.noaa.gov/about).
#'
#'
#'
#' @source https://www.ncei.noaa.gov/archive/archive-management-system/OAS/bin/prd/jquery/accession/download/120767
#'
#' @references NOAA National Centers for Environmental Information (2014). Physical and biological data collected along the Texas, Mississippi, Alabama, and Florida Gulf coasts in the Gulf of Mexico as part of the Harmful Algal BloomS Observing System from 1953-08-19 to 2024-03-25 (NCEI Accession 0120767). NOAA National Centers for Environmental Information. Dataset. https://www.ncei.noaa.gov/archive/accession/0120767. Accessed July 14, 2023.
#'
#' @examples
#' data(red_tide)
"red_tide"
