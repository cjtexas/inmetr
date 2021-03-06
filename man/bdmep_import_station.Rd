% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bdmep.R
\name{bdmep_import_station}
\alias{bdmep_import_station}
\title{Import data of a meteorological station}
\usage{
bdmep_import_station(.id = "83844", .sdate = "01/01/1961",
  .edate = format(Sys.Date(), "\%d/\%m/\%Y"), .email = "your-email",
  .passwd = "your-password", .verbose = TRUE, .destdir = NULL,
  .na.strings = "-9999")
}
\arguments{
\item{.id}{a character vector with the meteorological station code}

\item{.sdate}{start date in "d/m/Y" format}

\item{.edate}{end date in "d/m/Y" format, default values \code{format(Sys.Date(), "\%d/\%m/\%Y")}}

\item{.email}{e-mail to access BDMEP}

\item{.passwd}{password to access BDMEP}

\item{.verbose}{Optional. Logical. If set to TRUE (default), print messages.}

\item{.destdir}{Optional. Character Local file path to write file out to.If NULL (default) files are not written to disk.}

\item{.na.strings}{a character string which is to be interpreted as NA values.}
}
\value{
a data frame with variables in columns (see \code{\link{bdmep_description}}) and observations (date and time) along rows.
}
\description{
Import data of a meteorological station
}
\details{
The data are in sub-daily time scale. A minimum data quality control is applied to the data.
This include: a chronological sequence check; filling data from missing dates with NA;
remove duplicated data. Time variables (year, month, day, hour) are aggregated into a POSIX object in UTC
}
\author{
Jonatan Tatsch
}
