multiplot_hierarchy <- function(data, level="Top", fit=TRUE) {
  # function works with 3 level hierarchy
  # function plots points and fits line
  colnames(data)[1] = "Date"
  # colnames analyse
  l=c()
  for (i in 1:length(colnames(data))){
    #l=c(l,str_length(colnames(data)[[i]]))
    l <- c(l,length(charToRaw(colnames(data)[[i]])))
  }
  # Plot maken
  # library(tidyverse)
  # package:tidyr::gather

  if (level=="Top"){
    td <- tidyr::gather(data=data, "id", "value", 2:2)
  }
  if (level=="Mid"){
    td <- tidyr::gather(data=data, "id", "value", which(l==1))
  }
  if (level=="Lower"){
    td <- tidyr::gather(data=data, "id", "value", which(l==2))
  }
  p <- ggplot2::ggplot(td, aes(Date, value))+
    labs(title=paste("Time series plot of",level,"level series"), x="Date", y="Volume") +
    geom_point()+
    facet_wrap(~id)
  if (fit==TRUE){
    p <- p + geom_smooth(method = "lm", se=FALSE, color="black")
  }
  plot(p)
}

