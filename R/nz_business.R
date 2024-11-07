#' @title New Zealand business by region 2024
#'
#' @description  Percent of New Zealand businesses by region in 2024
#'
#' @details Outlying areas were omitted.
#'
#' @format a simple features data frame consisting of 16 observations on 10 variables:
#' \describe{
#'  \item{country}{two digit country abbreviatoin "NZ"}
#'  \item{island}{the north or south island of New Zealand}
#'  \item{region}{16 regions of New Zealand}
#'  \item{indicator}{business indicator code "2024M04"}
#'  \item{count}{count of total businesses}
#'  \item{total}{total of all businesses in New Zealand}
#'  \item{pct_business}{computed as (county / total) * 100}
#'  \item{lng}{center longitude for region}
#'  \item{lat}{center latitude for region}
#'  \item{geometry}{polygons for the different named regions}
#' }
#'
#' @source  [Statistics New Zealand](https://datainfoplus.stats.govt.nz/Item/nz.govt.stats/041540ba-fc68-4497-814a-74b2cc4beffd)
#'
#' @references
#'
#' Stats New Zealand. (2024). Enterprises Count (3ec6697f-2ec6-473b-ab41-a86e7de1fa9a) [Dataset]. https://datainfoplus.stats.govt.nz/Item/nz.govt.stats/041540ba-fc68-4497-814a-74b2cc4beffd
#'
#' Massicotte P, South A (2023). _rnaturalearth: World Map Data from Natural
#' Earth_. R package version 1.0.1,
#' <https://CRAN.R-project.org/package=rnaturalearth>.
#'
#' @examples
#' plot(nz_business["pct_business"], main = "Percent Business by Region")
"nz_business"
