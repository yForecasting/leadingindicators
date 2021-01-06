multilag <- function(data, x_dates, y_dates, lags) {
  align_dates = which(y_dates[1]==x_dates)
  lag_span = ncol(data)
  dilag <- x_dates[(align_dates:(align_dates+length(y_dates)-1))]
  lag_data <- data[(align_dates:(align_dates+length(y_dates)-1)),]
  for (lag in lags){
    if ((align_dates-lag) > 0){
      ilag <- data[((align_dates-lag):(align_dates+length(y_dates)-1-lag)),]
      cil <- colnames(lag_data)
      lag_data <- cbind(lag_data,ilag)
      colnames(lag_data) <- c(cil,paste0(colnames(data),"_LAG",lag))
    } else {
      warning("Warning: dataframe does not contain enough data to compose all requested lags.")
    }
  }
  return(lag_data)
}
