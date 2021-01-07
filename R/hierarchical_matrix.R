hierarchical_matrix <- function(nodes, levels=NA) {
  if (is.na(levels)){
    # Assume 3-level hierarchy if no levels are given
    levels=rep(2,length(nodes))
  }
  l2 <- nodes[levels==2]
  s <- matrix(0,ncol=sum(l2),nrow=(1+sum(l2)+length(nodes[levels>1])))
  # Top level
  s[1,]=1
  # Lowest level (identity)
  f1 <- nrow(s)-ncol(s)+1
  for (irow in (f1):nrow(s)){
    s[irow,(irow-f1+1)] <- 1
  }
  # Middle levels
  irow = 2
  icol = 0
  lev0 = levels[1]
  for (i in 1:length(nodes)){
    if (lev0 !=levels[i]){
      # or (icol==ncol(s))
      icol=0
    }
    for (levfill in 1:nodes[i]){
      icol <- icol + 1
      s[irow,icol] <- 1
    }
    irow <- irow + 1
    lev0 <- levels[i]
  }
  return(s)
}
