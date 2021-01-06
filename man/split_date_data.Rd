\name{split_date_data}
\alias{split_date_data}
\title{Split date vector from dataframe}
\usage{
split_date_data(data)
}
\arguments{
\item{data}{Data frame}
}
\description{
Returns a list with a vector containing the first column of the dataframe as first argument and as second argument a dataframe with all the other columns.
}
\examples{
tbl <- data.frame(a=1:10,b=11:20,c=21:30)
split_date_data(data=tbl)
}
