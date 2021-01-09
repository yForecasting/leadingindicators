\name{seasonal_dummies}
\alias{seasonal_dummies}
\title{Create Seasonal Dummies}
\usage{
seasonal_dummies(nrow, freq = 12)
}
\arguments{
\item{nrow}{Number of rows for the matrix of seasonal dummies.}
\item{freq}{Frequency of the seasonal dummies, this is set default to monthly (12).}
}
\description{
This function creates a dataframe with seasonal dummies that has 11 columns and <nrow> rows.
}
\examples{
seasonal_dummies(15)
seasonal_dummies(nrow = 30, freq = 52)
}
