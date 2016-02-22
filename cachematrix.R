## System for caching the inverse (solve(x)) of a matrix


## Given a matrix, creates a cached copy 
## (for comparison to current matrix to detect changes)

makeCacheMatrix <- function(x = matrix()) {
CacheMatrix <<- x
StoredInverse <<- NULL
}


## Given a matrix, checks for a stored inverse to the cached matrix.
## If there is no stored inverse, compute and store one.
## If the current matrix does not match the cached copy ...
## a new reference copy is stored and a new inverse is cached.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'

if(is.null(CacheMatrix)){
makeCacheMatrix(x)
StoredInverse<<-NULL
}else if(!identical(x,CacheMatrix)){
makeCacheMatrix(x)
StoredInverse<<-NULL
}


if(is.null(StoredInverse)){ 
StoredInverse<<-solve(CacheMatrix)
}
StoredInverse
        ## Return a matrix that is the inverse of 'x'
}
