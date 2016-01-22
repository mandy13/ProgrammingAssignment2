## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invx <- NULL
    set <- function(y){
        x <<- y
        invx <<- NULL
    }
    get <- function() x
    
    setinverse <- function(invMatrix) invx <<- invMatrix
    getinverse <- function() invx
    
    list(set = set,get = get, setinverse = setinverse, 
         getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    invMat <- x$getinverse()
    if(!is.null(invMat))
    {
        message("getting cached data")
        return (invMat)
    } 
    matx <- x$get()
    invmatx <- solve(matx)
    x$setinverse(invmatx)
    invmatx
}
