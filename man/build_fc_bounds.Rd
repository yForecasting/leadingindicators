\name{build_fc_bounds}
\alias{build_fc_bounds}
\title{Build Forecast Bounds for mean}
\usage{
build_fc_bounds(mean, residuals, option=1)
}
\arguments{
\item{mean}{Vector, list or dataframe with the mean point forecasts.}
\item{residuals}{Vector, list or dataframe with the residuals of fitting the model.}
\item{option}{Select an option: (1) in-sample RMSE as basis to calculate bounds. }
}
\description{
Function that formulates the 80 and 95 percent bounds for a forecast model.
}
\examples{
#
}
