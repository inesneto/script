sociability <- function(dataset, column, SocBase=2){
 
  dataset <- as.data.frame(dataset)
  
  
  SocRate <- function(x){(2 - 1/SocBase^(x-2))/2} 
  dataset$Sociability.rate <- SocRate(dataset[column])
  #dataset$Sociability.rate <- SocRate(dataset$`Unit#`)
  return(dataset)
}   



