## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
##This funtion is part of Coursera R programming Assignment of Week 3
##and is used to cache the inverse of a matrix to save long computational time

## This function creates a special matrix object that can cache its inverse
## This script defines two functions makeCachematrix and cachsolve to return inverse of matrix 
##from cache if matrix has not changed 
makecachematrix<-function(x=matrix()){
  invMat<-NULL 
  setMat<-function(x=matrix()){
    x<<-y
    invMatrix<<-NULL
  }
  getMat<-function() x
  setInverse<-function(inverse) invMat<<-inverse
  getInverse<-function() invMat 
  list(setMat=setMat, getMat=getMat, setInverse=setInverse, getInverse=getInverse)
}

## This next function retrieves the inverse from the memory cache
cacheSolve<-function(x,...){
  invMat<-x$getInverse() ##return inverse matrix of argument matrix x
  if(!is.null(invMat)){
   message("getting cached matrix")
    return(invMat)
  }
  Matdata<-x$getMat()
  invMat<-solve(Matdata,...)
  print("calling set inverse")
  x$setInverse(invMat)
  return(invMat)
}
