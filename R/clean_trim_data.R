clean_trim_data <- function(data, start="2004-01-01", end="2014-12-01") {
  data <- data[,-1] # remove 1e column
  colnames(data) <- c(paste0("Ind_",colnames(data))) # Rename columns
  colnames(data)[1] = "Date"
  ddata <- data[,1]
  start_data <- which(ddata==start) # Trim dataset
  end_data <- which(ddata==end)
  start_na <- which(is.na(data[start_data,]))
  end_na <- which(is.na(data[end_data,]))
  na_values <- unique(c(start_na,end_na))
  data <- data[,-c(na_values)]
  return(data)
}
