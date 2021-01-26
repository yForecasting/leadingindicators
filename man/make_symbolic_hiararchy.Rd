\name{make_symbolic_hiararchy}
\alias{make_symbolic_hiararchy}
\title{Make symbolic hierarchy labels}
\usage{
make_symbolic_hiararchy(hier, full=FALSE)
}
\arguments{
\item{hier}{Vector containing the number of time series on the lowest level for each upper level node.}
\item{full}{True/False to indicate wether the upper levels in the hierarchy should be named as well.}
}
\description{
Function to make a vector of symbolic names for the hierarchical structured time series. Letters and numbers are alternated used for each level of the hierarchy.
}
\examples{
make_symbolic_hiararchy(hier=c(2,3,2))
make_symbolic_hiararchy(hier=c(2,3,2), full=TRUE)
}
