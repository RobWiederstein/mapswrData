#' @title U.S. life expectancy by county 2019
#'
#' @description  U.S. life expectancy by county for all races and sexes at less than one year in 2019.
#'
#' @details The data is from the Institute for Health Metrics and Evaluation (IHME) and is based on the Global Burden of Disease (GBD) study. The data is for the year 2019 and is at the county level.
#'
#' @format A data frame with 3,127 rows and 9 variables:
#' \describe{
#'   \item{year}{year}
#'   \item{state_fips}{two digit state fips code}
#'   \item{state_name}{state name}
#'   \item{fips}{five digit county fips code}
#'   \item{race_name}{race name}
#'   \item{sex_name}{sex name}
#'   \item{location_name}{location name given as county and state}
#'   \item{age_name}{life expectancy at less than one year}
#'   \item{life_exp}{life expectancy in years}
#' }
#'
#' @source https://ghdx.healthdata.org/record/ihme-data/united-states-causes-death-life-expectancy-by-county-race-ethnicity-2000-2019. No license was referenced.
#'
#' @references Institute for Health Metrics and Evaluation (IHME). United States Mortality Rates by Causes of Death and Life Expectancy by County, Race, and Ethnicity 2000-2019. Seattle, United States of America: Institute for Health Metrics and Evaluation (IHME), 2023. doi.org/10.6069/3WQ2-TG23
#'
#' @seealso GBD US Health Disparities Collaborators. Life expectancy by county, race, and ethnicity in the USA, 2000–19: a systematic analysis of health disparities. The Lancet. 16 June 2022. doi: 10.1016/ S0140-6736(22)00876-5.
#'
#' @examples
#' life_exp
"life_exp"
