## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The first function, makeCacheMatrix creates a special "Matrix", which is really a list containing a function to
#1,set the value of the matrix
#2,get the value of the matrix
#2,set the value of the inverse of the matrix
#3,get the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set <- function(y) {
    x<<- y
    i<<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i 
       list(set= set, get = get, 
       setinverse= setinverse, 
       getinverse = getinverse)
}




## Write a short comment describing this function
## This function create the inverse of matrix or pass the matrix which is already computed to the inverse
cacheSolve <- function(x, ...) {
       i<- x$getinverse()
       if(!is.null(i)) {
         message("getting cached data")
         return(i)
       }
       data <- x$get()
       i<- solve(data)
       x$set_inverse(i)
       i
}
