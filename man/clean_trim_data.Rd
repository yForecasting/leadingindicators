\name{clean_trim_data}
\alias{clean_trim_data}
\title{Clean and trim raw dataset}
\usage{
clean_trim_data(data, start, end)
}
\arguments{
\item{data}{Data frame containing raw data export from statistical agency. The first column is index, second column is the date and the following columns are indicator variables.}

\item{start}{Start date to trim from.}

\item{end}{End date to trim to.}
}
\description{
Cleans the raw dataset by removing the first column, renaming the variables in the column headers. The dataset is trimmed from start to end date, the rest is omitted. Series that have NA values between these dates are omitted.
}
\examples{
clean_trim_data(data=indicatordata, start="2004-01-01", end="2014-12-01")
}
