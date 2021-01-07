\name{hierarchical_matrix}
\alias{hierarchical_matrix}
\title{Create Hierarchical Structure Matrix}
\usage{
hierarchical_matrix(nodes, levels)
}
\arguments{
\item{nodes}{Vector of number of time series for each hierarchical level. The lowest level (all ones) and the top level (sum of all) should not be included.}
\item{levels}{Vector that corresponds to the vector of nodes, describing on which level each node is. The lowest number in this vector is 2, being the node level above the lowest hierarchical time series. When this argument is empty, a 3-level hierarchy is assumed.}
}
\description{
Function that creates a matrix that represents the hierarchial structure of a dataset. In a symmetric hierarchy with 3 levels where the top level is the sum of all, and the lower level are all individual time series, this argument can be set to 2, while only specifying the mid level nodes in the previous argument.
}
\examples{
hierarchical_matrix(nodes=c(1,2), levels=c(2,2))

hierarchical_matrix(nodes=c(3,5,1,2,3,2), levels=c(3,3,2,2,2,2))
}
