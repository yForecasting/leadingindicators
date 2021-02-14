build_unconditional_lasso <- function(y, x, seasM=NA, lag_span=0, hmax=12, maxlag=12, ...) {
  # unconditional help table to select begin and end of the dataframe for each horizon
  # plotting check out: https://cran.r-project.org/web/packages/forecastML/vignettes/grouped_forecast.html
  if (lag_span==0){
    # arg not given
    lag_span = ncol(data.frame(x))/(hmax+1)
    if (lag_span%/%1 != lag_span){
      # unlagged x were not in dataframe
      lag_span = ncol(data.frame(x))/hmax
    }
  }
  # ++ UNCONDITIONAL ++
  # Create for each forecasted horizon index set of used lag material:
  uch <- data.frame(MinLagIdx=lag_span*c(1:hmax)+1,MaxLagIdx=lag_span+lag_span*maxlag) # //lag=<ih//
  #????????? empty list for fc ??
  fcL <- list(mean=c(1:hmax)*NA,lower=matrix(ncol=2,nrow=hmax),upper=matrix(ncol=2,nrow=hmax),x="x")
  ih=1 # Debug
  for (ih in 1:hmax){
    # x contains train and test data; split happens in build_lasso
    # y only contains train data
    # unconditional cut on the dataframe x
    trm <- data.frame(x[,(uch[ih,1]:uch[ih,2])])

    # seasonality is not subject to unconditional cut
    if (class(seasM) != "logical"){
      # argument seasonality matrix seasM is not NA
      trm <- cbind(seasM,  data.frame(x[,(uch[ih,1]:uch[ih,2])]))
      # ???? colnames(trm) <-
    }

    #????? idx <- c(1:ncol(trm))
    #inam <- colnames(trm)# ?????[idx]
    model.list <- build_lasso(y, x, h=ih) #, lambda=1, seed=1010, nfolds=10, type.measure="mae")
  }
  return(model.list)
}
