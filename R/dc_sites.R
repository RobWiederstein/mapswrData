#' @title Washington D.C. commuter counties 2020
#'
#' @description  Washington D.C. inbound commuter counties 2020
#'
#' @details From the U.S. Census Bureau:  "The American Community Survey (ACS) asks respondents about their primary workplace location. When information about workers’ residence location and workplace location are coupled, a commuting flow is generated. The origin-destination flow format informs our understanding of interconnectedness between communities, including the interchange of people, goods, and services." For additional information, see the [page](https://www.census.gov/topics/employment/commuting/guidance/flows.html) on commuter data.
#'
#' @format A data frame of 96 rows and four variables:
#' \describe{
#'   \item{id}{five character FIPS code for state and county}
#'   \item{name}{county name}
#'   \item{lat}{latitude}
#'   \item{lon}{longitude}
#'}
#'
#' @source  https://www.irs.gov/statistics/soi-tax-stats-migration-data-2021-2022
#'
#' @references Internal Revenue Service, Statistics of Income Division (2022). SOI Tax Stats - Migration Data. Last accessed October 26, 2024.
#'
#' @examples
#' dc_sites
"dc_sites"
