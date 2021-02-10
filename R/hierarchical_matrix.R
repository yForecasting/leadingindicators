hierarchical_matrix <- function(nodes, nodeshier=NA) {
  # make summing matrix S for reconcilation formula
  # First all low level series will be summed to the top series
  # Then the lowest level series are all set to 1 in identity matrix format
  # Then intermediate aggregations are formed in-between
  if (class(nodeshier)=="logical"){
    # Assume 3-level hierarchy if no nodeshier are given
    nodeshier=rep(2,length(nodes))
  }
  l2 <- nodes[nodeshier==2]
  s <- matrix(0,ncol=sum(l2),nrow=(1+sum(l2)+length(nodes[nodeshier>1])))
  # Top level
  s[1,]=1
  # Lowest level (identity)
  f1 <- nrow(s)-ncol(s)+1
  for (irow in (f1):nrow(s)){
    s[irow,(irow-f1+1)] <- 1
  }
  # Middle level - with nodeshier
  irow = 2
  icol = 0
  lev0 = nodeshier[1]
  for (i in 1:length(nodes)){
    if (lev0 !=nodeshier[i]){
      # or (icol==ncol(s))
      icol=0
    }
    for (levfill in 1:nodes[i]){
      icol <- icol + 1
      s[irow,icol] <- 1
    }
    irow <- irow + 1
    lev0 <- nodeshier[i]
  }
  return(s)
}
