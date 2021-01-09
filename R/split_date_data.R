split_date_data <- function(data) {
  # Split dataframe into col1 + the rest
  # return vector of dates + dataframe of data
  return(list(data[,1],data[,-1]))
}
