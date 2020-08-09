## Put comments here that give an overall description of what your
## functions do
# I just took the example and substituted the new variables.

## Write a short comment describing this function
# stores the matrix in the cache

makeCacheMatrix <- function(x = matrix()) {
    mat <- NULL
    set <- function(y) {
        x <<- y
        mat <<- NULL
    }
    get <- function() x
    set_mat <- function(solve) mat <<- solve
    get_mat <- function() mat
    list(set = set, get = get,
         set_mat = set_mat,
         get_mat = get_mat)
    
    
}

## Write a short comment describing this function
# finds out if the matrix that we are testing is already in the cache
# it only calculates it if it has not been calculated before

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    mat <- x$get_mat()
    if(!is.null(mat)) {
        message("getting cached data")
        return(mat)
    }
    data <- x$get()
    mat <- solve(data, ...)
    x$set_mat(mat)
    mat
    
}
