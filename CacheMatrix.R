
## Creates a cache matrix, facilitating the calculation of inverse of matrix

makeCacheMatrix <- function(x = matrix()) {

## defining cache m to null

 m <- NULL
        
set <- function(y) 
{
                
x <<- y
                
m <<- NULL
        
}
        
get <- function() x
  
      
setinverse <- function(solve) m <<- solve      
getinverse <- function() m
        
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}


## Checks cache inverse else creates and caches it


cacheinverse <- function(x, ...) {
  

## Return a matrix that is the inverse of 'x'
      
m <- x$getinverse()
        
if(!is.null(m)) {
                

##checking if inverse already calculated

message("getting cached data")
                
return(m)
        }
        

##if not calculate and cache it

data <- x$get()
        
m <- solve(data, ...)
        
x$setinverse(m)
        m
}
