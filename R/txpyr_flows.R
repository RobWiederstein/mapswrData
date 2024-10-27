#' @title U.S. interstate taxpayer migration 2021 - 2022
#'
#' @description  U.S. interstate taxpayer migration data from IRS tax returns for 2021 - 2022
#'
#'
#' @format  a data frame of 5100 observations and three variables:
#' \describe{
#'   \item{dest}{two character FIPS code for the destination state}
#'   \item{origin}{two character FIPS code for the origin state}
#'   \item{count}{number of persons}
#'}
#'
#' @source  https://www.irs.gov/statistics/soi-tax-stats-migration-data-2021-2022
#'
#' @references Internal Revenue Service, Statistics of Income Division (2022). SOI Tax Stats - Migration Data. Last accessed October 26, 2024.
#'
#' @examples
#' txpyr_flows
"txpyr_flows"
