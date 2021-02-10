build_lasso <- function(y, x, h=12, lambda=1, seed=1010, nfolds=10, type.measure="mae") {
  # Test on input parameter lambda
  if (class(lambda)=="numeric"){
    if (lambda==1){
      lambda = "lambda.1se"
    }
  }
  # Test on length y & x
  if (length(data.frame(y.in)[,1]) == length(data.frame(x)[,1])){
    print("The target variable y is of equal length as the train+forecast set x. x should also contain values to forecast.")
    return(NA)
  } else {
    # y train
    y.in <- y # New training set
    # x train + test set
    trm.fit <- x[1:length(y.in),]
    trm.frc <- x[(length(y.in)+1):(length(y.in)+h),]
    # Option 2a: original full train set, let the lambda vary
    set.seed(1010)
    cv.om <- glmnet::cv.glmnet(as.matrix(trm.fit),as.matrix(y.in),nfolds=nfolds,type.measure=type.measure)
    # Get model specification
    cof <- coef(cv.om,s=lambda)
    nozerocof = !(as.matrix(cof)==0)
    nnam <- rownames(cof)[nozerocof]
    # fitted values
    fit.temp <- predict(cv.om,newx=as.matrix(trm.fit),s=lambda)         # Re-fit model. Keep specification fixed
    # forecast values
    frc.temp <- predict(cv.om,newx=as.matrix(trm.frc),s=lambda)
    return(list(coef=cof, nozerocoef=nnam, fitted=fit.temp, forecast=frc.temp))
  }
}
