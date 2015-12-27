## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invcashed <- NULL
  set <- function(y) {
    x <<- y
    invcashed <<- NULL
  }
  get <- function() x
  invset <- function(inv) invcashed <<- inv
  invget <- function() invcashed
  list(set = set, get = get,
       invset = invset,
       invget = invget)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
funcinv <- x$invget()
  if(!is.null(funcinv)) {
    message("cached data")
    return(funcinv)
  }
  d <- x$get()
  funcinv <- solve(d, ...)
  x$invset(funcinv)
  funcinv
}
