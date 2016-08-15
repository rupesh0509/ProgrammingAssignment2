<<<<<<< HEAD
##  Caching the Inverse of a Matrix


##This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invs <- NULL
  set <- function(y) {
    x <<- y
    invs <<- NULL
  }
  get <- function() x
  setinvs <- function(inverse) invs <<- inverse
  getinvs <- function() invs
  list(set = set, get = get,
       setinvs = setinvs,
       getinvs = getinvs)
  
}


##  This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cacheSolve retrieves the inverse 
##from the cache.

cacheSolve <- function(x, ...) {
  invs <- x$getinvs()
  if(!is.null(invs)) {
    message("getting cached data")
    return(invs)
  }
  mat <- x$get()
  invs <- solve(mat, ...)
  x$setinvs(invs)
  invs
}
=======
##  Caching the Inverse of a Matrix


##This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invs <- NULL
  set <- function(y) {
    x <<- y
    invs <<- NULL
  }
  get <- function() x
  setinvs <- function(inverse) invs <<- inverse
  getinvs <- function() invs
  list(set = set, get = get,
       setinvs = setinvs,
       getinvs = getinvs)

}


##  This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cacheSolve retrieves the inverse 
##from the cache.

cacheSolve <- function(x, ...) {
  invs <- x$getinvs()
  if(!is.null(invs)) {
    message("getting cached data")
    return(invs)
  }
  mat <- x$get()
  invs <- solve(mat, ...)
  x$setinvs(invs)
  invs
}
>>>>>>> origin/master
