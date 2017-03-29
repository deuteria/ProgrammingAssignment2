##This function will create a list containing the first element stored in the matrix and create a second which is empty, but will store the inverse of the matrix.



makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
}

  get <- function () x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}

## The third element will contain the result of the second, and the forth will calculate the inverse of the matrix stored in third.    
cacheSolve <- function(x, ...) {
       m <- x$getminv()
       if(!is.null(m)){
          message("Getting cached data!")
         return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinv(m)
m
}
