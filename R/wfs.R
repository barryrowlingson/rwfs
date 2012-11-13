

#' @export
createWFS <- function(){
  tools <- asNamespace("tools")
  e <- get(".httpd.handlers.env", tools)
  e[['wfs']]=WFSserver
}

#' @export
removeWFS <- function(){
  tools <- asNamespace("tools")
  e <- get(".httpd.handlers.env", tools)
  e[['wfs']]=NULL
}
  

WFSserver <- function(path,query,...){
  cat("Received\n")
  cat("path = ",path,"\n")
  cat("query = ",query,"\n")
  return(list(payload="Testing 1 2 3",mimetype="text/plain","status code"=200L))
}
