pt <- function(data) {
  return(data[1:min(nrow(data),5),1:min(ncol(data),10)])
}
