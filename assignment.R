## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x=matrix()) {
  m<-matrix()
  set<-function(y) {
    x<<- y
    m<<-matrix()
  }
  get <-function()x
  a<-function(mean)m<<- mean
  b<-function()m
  list(set = set, get = get, a=a, b=b)
  
}


## This function computes the inverse of the special
##"matrix" returned by `makeCacheMatrix` above. If the inverse has
##already been calculated (and the matrix has not changed), then
##`cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-matrix()
  x<-makeCacheMatrix
  m<-if(nrow(x)==ncol(x)){
    solve(x)
  }else {
    message("x has no inverse")
  }
  m
}
