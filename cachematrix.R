## Here are a pair of functions that cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inverSO <- NULL
set <- function(y) {
x <<- y
inverSO <<- NULL
}
get <- function() x
setinv <- function(inverse) inv <<- inverse
getinv <- function() inverSO
list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
    inverSO <- x$getinv()
    if(!is.null(inverSO)) {
        message("getting cached data")
        return(inverSO)
    }
    data <- x$get()
    inverSO <- solve(data)
    x$setinv(inverSO)
    inverSO
}
