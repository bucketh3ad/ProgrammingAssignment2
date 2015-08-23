## Put comments here that give an overall description of what your
## functions do

## Takes a matrix and creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(get = get, setinv = setinv, getinv = getinv)
}


## Takes a CacheMatrix and gets the inverse from the cache or solves and caches it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinv(inv)
    inv
}
