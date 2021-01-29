\name{build_lasso}
\alias{build_lasso}
\title{Build LASSO model forecast}
\usage{
build_lasso(y, x, h=12, lambda=1, seed=1010, nfolds=10, type.measure="mae")
}
\arguments{
\item{y}{Target series to forecast as data frame or matrix.}
\item{x}{Explanatory variable set to choose and select from, as data frama or matrix. Each column represent an individual variable.}
\item{h}{horizons to forecast}
\item{lambda}{lambda to select for internal optimisation}
\item{seed}{seed to use for internal optimisation}
\item{nfolds}{nfold to use for internal optimisation}
\item{type.measure}{type of measure to use for internal optimisation}
}
\description{
Model building flow around the traditional LASSO model.
}
\value{
This function returns a list with model details specified.
}
\author{
Yves R. Sagaert,  \email{yves.sagaert@vives.be}
}
\examples{
# build_lasso(y,x,h=1:12)
}
