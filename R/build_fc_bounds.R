build_fc_bounds <- function(mean, residuals, option=1) {
  # Function that build upper and lower bound for point forecast
  # Option 1: in-sample RMSE

  if (option==1){
    rmse1 = sqrt(mean(residuals^2))
    k1 = qnorm((1 - 0.80)/2, lower.tail = FALSE) # 0.80 %
    k2 = qnorm((1 - 0.95)/2, lower.tail = FALSE) # 1.96 for 0.95 %
    bound1 = rep(k1*rmse1,12)
    bound2 = rep(k2*rmse1,12) # DIRECT FORECASTING !! -> this originates from LASSO
    lower = cbind(mean-bound1,mean-bound2)
    upper = cbind(mean+bound1,mean+bound2)
  } else {
    print("Please specify a valid option of calculating bounds")
    lower=NA
    upper=NA
  }
    return(list(mean, lower, upper))

}
