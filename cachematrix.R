## Put comments here that give an overall description of what your
## functions do

## make/create Cache Matrix 
# set the value of the vector
# get the value of the vector
# set the value of the solve
# get the value of the solve

makeCacheMatrix <- function(x = matrix()) {
  c <- NULL # c stands for "cache" here.
  
  # set function is not used here
  
  # set <- function(y){
  #   x <<- y
  #   c <<- NULL
  # }
  
  get <- function() x
  setsolve <- function(solve) c <<- solve
  getsolve <- function() c
  list(
      #set = set, 
       get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## calculates the solve for matrix 

cacheSolve <- function(x, ...) {
  c <- x$getsolve()
  if(!is.null(c)){
    message("getting cached data")
    return(c)
  }
  data <- x$get()
  c <-solve(data, ...)
  x$setsolve(c)
  
  ## Return a matrix that is the inverse of 'x'
  c
}
