\name{multilag}
\alias{multilag}
\title{Create multiple lags of time series dataframe}
\usage{
multilag(data, x_dates, y_dates, lags)
}
\arguments{
\item{data}{Dataframe containing the variables where the lagged versions are created from.}
\item{x_dates}{Vector of the date arguments for the corresponding dataframe.}
\item{y_dates}{Vector of the date arguments for the target variable. The x variables will be lagged up until there are no y values.}
\item{lags}{Vector of lags that should be generated as lagged variables for all the columns in the dataframe. The number of dates in x_dates proceeding the first date of y_dates is equal to the maximul number of lags. Adjust y_dates for higher lags.}
}
\description{
This function creates lagged versions of time series variables that are given in different columns of a dataframe format. The lag is added to the column name of the data frame.
}
\examples{
tbl <- data.frame(a = c(1:10), b = c(11:20), c = c(21:30))
x_dat <- c("2021-01-01","2021-02-01","2021-03-01","2021-04-01","2021-05-01","2021-06-01","2021-07-01","2021-08-01","2021-09-01","2021-10-01")
y_dat <- c("2021-06-01","2021-07-01","2021-08-01","2021-09-01","2021-10-01")
lag_nr <- c(1:5)
tbl_lagged <- multilag(data = tbl, x_dates = x_dat, y_dates = y_dat, lags = lag_nr)
}
