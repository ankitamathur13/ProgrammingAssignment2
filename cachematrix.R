## Put comments here that give an overall description of what your
## functions do

## This function will create a special matrix
## which returns a list containing four functions
## set- to set values in matrix
## get to get d whole matrix
## setinverse to set inverse of matrix
## getinverse to get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
	## inv is inverse of the matrix
	inv<- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	 get <- function() x
       setinverse <- function(inverse) inv <<- inverse
       getinverse <- function() inv
       list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## this function checks the special matrix to see if 
## value of inverse has been set
## if not it is calculated


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  y <- x$getinverse()
        if(!is.null(y)) { ## check if inverse has been calculated
                message("getting cached data")
                return(y)
        }
##else calculate and return
        data <- x$get() 
        y <- solve(data)
        x$setinverse(y)
        y
}
