## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates four functions that gets, sets and caches both the value and the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(y){
                x<<-y
                i<<- NULL
        }
        get<-function()x
        setinverse <- function(solve)i <<-inverse
        getinverse <-function()i
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
##This function returns the inverse of the matrix if it is already cached, and if not, it calculates the inverse and prints it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                        return(i)
        }
        data <- x$get()
        i <-solve(data,...)
        x$setinverse(i)
        i
}
