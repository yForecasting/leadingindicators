\name{build_unconditional_lasso}
\alias{build_unconditional_lasso}
\title{Build Unconditional LASSO}
\usage{
build_unconditional_lasso(y, x, seasM=NA, lag_span=0, hmax=12, maxlag=12, ...)
}
\arguments{
\item{y}{Target series to forecast as data frame or matrix.}
\item{x}{Explanatory variable with lagged versions set to choose and select from, as data frama with column names. Each column represent an individual variable.}
\item{seasM}{Seasonal dummies in data frame format with column names. }
\item{lag_span}{One number. For the explantory variables, how many variables are present in each lag"}
\item{hmax}{horizons to forecast up to}
\item{maxlag}{max number of (consequtive) lags that are present in the dataframe x.}
}
\item{...}{Other arguments that can be used in the build_lasso() function}
\description{
This function build a traditional LASSO modelling with external variables to forecast the target variable y, but the x dataframe is used in a unconditional setup, meaning only lagged versions of variables present in x will be used up until their corresponding forcast horizon h.
}
\examples{
# build_unconditional_lasso()
}
