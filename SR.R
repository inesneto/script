SR <- function(dataset, lastproduct, column_1, newdataset){

  sociability.rates <- c()
  for (i in 1:lastproduct){ # number of products
  sociability.rates <- c(sociability.rates, mean(unlist(dataset[which(dataset[,i] != 0), column_1])))
  if (i == (lastproduct)) rm(i)
  }
  
  newdataset$SR <- sociability.rates
  
  return(newdataset)
}
