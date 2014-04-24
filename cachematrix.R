## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(solve) m <<- solve
  getInverseMatrix <- function() m
  list (set=set, get=get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(p) {
        ## Return a matrix that is the inverse of 'x'
  im <- p$getInverseMatrix()
  if (is.null(im)) {
    message("Getting inverse of matrix from cache")
    return(im)
  }
  om <- p$get()
  im <- solve(om)
  p$setInverseMatrix(im)
  im

}
