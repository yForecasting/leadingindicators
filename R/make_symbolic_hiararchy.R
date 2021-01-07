make_symbolic_hiararchy <- function(hier=c()) {
  if (length(hier)>0){
    str_hier <- c()
    for (i in 1:length(hier)){
      str_hier = c(str_hier, paste0(LETTERS[i],c(1:hier[i])))
    }
    return(str_hier)
  } else {
    print("A vector representing the hierarchy is required.")
  }
}
