\name{pt}
\alias{pt}
\title{Print tidy dataframe}
\usage{
pt(x)
}
\description{
For rapid data inspection. Print dataframe in a tidy manner. Show the first 5 rows and 10 columns, or less.
}
\examples{
data <- data.frame(a=c(1:100),b=(1:100))
pt(x=data)
}
