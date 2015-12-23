 

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeCacheMatrix <- function(j = matrix()) {
  inv <- NULL
  set <- function(y) {
    j <<- y
    inv <<- NULL
  }
  get <- function() j
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

j = rbind(c(7, -3/4), c(-2/4, 9))

m = makeCacheMatrix(j)

m$get()

cacheSolve <- function(j, ...) {
  inv <- j$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- j$get()
  inv <- solve(data)
  j$setinverse(inv)
  inv
}

cacheSolve(m)
cacheSolve(m)
