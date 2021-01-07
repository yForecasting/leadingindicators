\name{make_symbolic_hiararchy}
\alias{make_symbolic_hiararchy}
\title{Make symbolic hierarchy labels}
\usage{
make_symbolic_hiararchy(hier)
}
\arguments{
\item{hier}{Vector containing the number of time series on the lowest level for each upper level node.}
}
\description{
Function to make a vector of symbolic names for the hierarchical structured time series. Letters and numbers are alternated used for each level of the hierarchy. 
}
\examples{
make_symbolic_hiararchy(hier=c(2,3,2))
}
