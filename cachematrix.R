## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        inv.x <- NULL
        set <- function(y) {
                x <<- y
                inv.x <<- NULL
        }
        get <- function() x
                
        #TODO inverse matrix
        setInverse <- function(inv) inv.x <<-inv
        getInverse <- function() inv.x
        list ( set = set,
               get = get,
               setInverse = setInverse,
               getInverse = getInverse)
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheX <- x$getInverse()
        if(!is.null(cacheX)){
                message("getting cached data")
                return(cacheX)
        }
        data <- x$get()
        # TODO change to inverse ?solve
        #Use solve to inverse matrix
        cacheX <- solve(data, ...)
        x$setInverse(cacheX)
        cacheX

}

