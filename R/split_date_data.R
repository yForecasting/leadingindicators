split_date_data <- function(data) {
  return(list(data[,1],data[,-1])) # return vector of dates + dataframe of data
}
