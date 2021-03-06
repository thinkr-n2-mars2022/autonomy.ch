% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_data_integrity.R
\name{check_data_integrity}
\alias{check_data_integrity}
\title{check_data_integrity: check dataset integrity}
\usage{
check_data_integrity(data, colname)
}
\arguments{
\item{data}{a dataset to check}

\item{colname}{a column to check}
}
\value{
Side effect: a text message if everything is OK
}
\description{
check_data_integrity: check dataset integrity
}
\examples{
datafile <- system.file("nyc_squirrels_sample.csv", package = "autonomy.ch")
nyc_squirrels <- read.csv(datafile)

check_data_integrity(nyc_squirrels,'primary_fur_color')
#check_data_integrity(nyc_squirrels,'combination_of_primary_and_highlight_color')
}
