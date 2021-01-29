build_lasso <- function(y, x, h=12, lambda=1, seed=1010, nfolds=10, type.measure="mae") {
  if (lambda==1){
    lambda = "lambda.1se"
  }
  # y train
  y.in <- forecast::ts(y,frequency=forecast::frequency(y),start=forecast::start(y))  # New training set
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
}
