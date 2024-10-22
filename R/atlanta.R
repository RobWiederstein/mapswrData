#' Census data on the Atlanta MSA in 2020
#'
#' A dataset containing U.S. census data on the Atlanta MSA with tract polygons.
#'
#' @format A simple feature collection with 1,006 rows and 8 columns:
#' \describe{
#'   \item{geoid}{A geographic unit identifier}
#'   \item{tract}{The tract number}
#'   \item{county}{county}
#'   \item{state}{state}
#'   \item{estimate_median_age}{estimate median age unit in years}
#'   \item{pct_bachelor}{percent of population with a bachelor's degree or higher}
#'   \item{pct_veteran}{percent of population that are veterans}
#' }
#'
#' @details A dataset containing U.S. census data on the Atlanta MSA in 2020 at the "tract" level. The Atlanta MSA, as of publication, was comprised of five counties: Fulton, DeKalb, Cobb, Gwinnett, and Clayton. While the Census Bureau publishes a margin of error ("moe") for each estimate, this dataset only includes the point estimate. Data were retrieved from the U.S. Census Bureau's API using the `tidycensus` package.
#'
#' @references U.S. Census Bureau (2015-2020). American Community Survey 5-year Estimates.
#'
#' @examples
#' if (requireNamespace("sf", quietly = TRUE)) {
#'   data(atlanta)
#'   plot(atlanta["estimate_median_age"])
#'   }
"atlanta"
