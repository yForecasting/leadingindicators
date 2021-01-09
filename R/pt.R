pt <- function(data) {
  # Rapid data analysis function
  # show head of data to 5 row and 10 col
  return(data[1:min(nrow(data),5),1:min(ncol(data),10)])
}
