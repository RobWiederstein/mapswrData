% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flights.R
\docType{data}
\name{flights}
\alias{flights}
\title{Flights of U.S. domestic airlines February 2011}
\format{
A data frame with 178 rows and 9 columns:
\describe{
\item{start_lat}{latitude of the departing airport}
\item{start_lon}{longitude of the departing airport}
\item{end_lat}{latitude at the arriving airport}
\item{end_lon}{longitude at the arriving airport}
\item{airline}{airline code}
\item{airport1}{three letter abbreviation for departing airport}
\item{airport2}{three letter abbreviation for arriving airport}
\item{cnt}{number of flights}
\item{info}{html label for origin and destination of flight}
}
}
\source{
'https://raw.githubusercontent.com/plotly/datasets/master/2011_february_aa_flight_paths.csv'
}
\usage{
flights
}
\description{
A dataset containing map coordinates from the departures and arrivals at U.S. airports in February of 2011.
}
\details{
This dataset is the illustrative dataset for the \code{mapdeck} package and was ported from the \code{plotly} GitHub account. To avoid the creation of a dependency and  a possible broken link, the dataset was preserved here.  The original source was provided under an MIT license.
}
\examples{

if (requireNamespace("dplyr", quietly = TRUE)) {
  library(dplyr, warn.conflicts = FALSE, quietly = TRUE)
  data(flights)
  glimpse(flights)
}

}
\keyword{datasets}
