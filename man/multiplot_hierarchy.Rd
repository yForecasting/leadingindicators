\name{multiplot_hierarchy}
\alias{multiplot_hierarchy}
\title{Multiple Plot of Hierarchy}
\usage{
multiplot_hierarchy(data, level = "Top", fit = TRUE)
}
\arguments{
\item{data}{Data frame containing of column 1: the date, and then columns with the time series data from high to low level in the hierarchy.}
\item{level}{Level to plot: c("Top", "Mid", "Lower"). This can be the top level, mid level or lower levels. The input can be given in string or numeric format.}
\item{fit}{Should a linear fitted model be added to the plot?}
}
\description{
Function to inspect the time series on a hierarchical leve. The plot have the same y-axis scale, making them easily comparable.
}
\value{
This function returns a plot.
}
\author{
Yves R. Sagaert,  \email{yves.sagaert@vives.be}
}
\examples{
# df = data.frame(date=c(1,2,3,4),Top=c(156,145,126,135),A=c(10,20,30,40))
# multiplot_hierarchy(data = df, level = "Top", fit = TRUE)
}
