\name{pt}
\alias{pt}
\title{Print tidy dataframe}
\usage{
pt(data)
}
\arguments{
\item{data}{Dataframe}
}
\description{
For rapid data inspection. Print dataframe in a tidy manner. Show the first 5 rows and 10 columns, or less.
}
\examples{
df <- data.frame(a=c(1:100),b=(1:100))
pt(data=df)
}
