#' @title Homicides in San Francisco 2018 - 2023
#'
#' @description  Homicides in San Francisco, California, 2018 - 2023.
#'
#'
#' @format a dataframe with 135 rows and 7 variables:
#' \describe{
#'   \item{incident_datetime}{date and time of the incident}
#'   \item{incident_id}{unique identifier for the incident}
#'   \item{incident_code}{incident code}
#'   \item{incident_category}{incident category}
#'   \item{incident_subcategory}{incident subcategory}
#'   \item{lat}{latitude}
#'   \item{lon}{longitude}
#' }
#'
#' @details For city-level crime data, municipalities, particularly large ones, often provide the data via an open data portal.  Here, the data were discovered in the [San Francisco Open Data Portal](https://datasf.org/opendata/).  Most crime data is reported on the Uniform Crime Reports and submitted to the Federal Bureau of Investigation.  You can investigate and learn more about crime in the United States via the FBI's [Crime Data Explorer](https://crime-data-explorer.fr.cloud.gov/).  Murder is usually grouped with non-negligent manslaughter in counting homicides.  For that reason, the "incident_subcategory" was included.
#'
#' @source  https://data.sfgov.org/Public-Safety/Police-Department-Incident-Reports-2018-to-Present/wg3w-h783/data_preview
#' Published under a Open Data Commons Public Domain Dedication and License v1.0 (PDDL).
#'
#' @references San Francisco Police Department, Police Department Incident Reports: 2018 to Present (2024) last accessed October 22, 2024.
#'
#' @examples
#' homicides
"homicides"
