% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gs4_fodder.R
\name{gs4_fodder}
\alias{gs4_fodder}
\title{Create useful spreadsheet filler}
\usage{
gs4_fodder(n = 10, m = n)
}
\arguments{
\item{n}{Number of rows.}

\item{m}{Number of columns.}
}
\value{
A data frame of character vectors.
}
\description{
Creates a data frame that is useful for filling a spreadsheet, when you just
need a sheet to experiment with. The data frame has \code{n} rows and \code{m} columns
with these properties:
\itemize{
\item Column names match what Sheets displays: "A", "B", "C", and so on.
\item Inner cell values reflect the coordinates where each value will land in
the sheet, in A1-notation. So the first row is "B2", "C2", and so on.
Note that this \code{n}-row data frame will occupy \code{n + 1} rows in the sheet,
because the column names occupy the first row.
}
}
\examples{
gs4_fodder()
gs4_fodder(5, 3)
}
