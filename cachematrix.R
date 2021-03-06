## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function (y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inv) inverse <<- inv
	getinverse <- function() inverse
	list (set = set, get = get, 
		setinverse = setinverse, 
		getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
	inv <- x$getinverse()
	if(!is.null(inv)) {
			message ("getting cached data")
			return (inv)
	}
	mtx <- x$get()
	inv <- solve(mtx, ...)
	x$setinverse(inv)
	inv
}

