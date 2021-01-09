seasonal_dummies <- function(nrow, freq = 12) {
  # Create base matrix of seasonal dummies
  seasM <- diag(freq)
  # Now stack (rbind) them to at least the nrow amount
  totseas <- ceiling(nrow/freq)
  for (j in 1:totseas){
    seasM <- rbind(seasM,diag(freq))
  }
  # cut off freq-1 columns and rows to nrow amount
  seasM <- seasM[1:nrow,1:(freq-1)]
  return(seasM)
}
