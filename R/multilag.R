multilag <- function(data, x_dates, y_dates, lags) {
  # create lags of the indicator data and append them (cbind) to the original
  # indicator data frame

  # date where first sales data is present
  align_dates = which(y_dates[1]==x_dates)
  # number of indicators
  lag_span = ncol(data)
  # base data which will be extended with lagged data
  lag_data <- data[(align_dates:(align_dates+length(y_dates)-1)),]
  for (lag in lags){
    # if there is still data present
    if ((align_dates-lag) > 0){
      # select the data that is lagged
      ilag <- data[((align_dates-lag):(align_dates+length(y_dates)-1-lag)),]
      cil <- colnames(lag_data)
      # add lagged data to original data frame
      lag_data <- cbind(lag_data,ilag)
      # adjust column names
      colnames(lag_data) <- c(cil,paste0(colnames(data),"_LAG",lag))
    } else {
      warning("Warning: dataframe does not contain enough data to compose all requested lags.")
    }
  }
  return(lag_data)
}
