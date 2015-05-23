## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function four function: sets the value of a matrix, gets the matrix, sets the calculated inverse to a matrix, and last
#the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
	inv_matrix<<-NULL
	#sets the matrix data
	set<-function(y)
	{
		x<<-y
		inv_matrix<<-NULL
	}
	#gets the matrix data
	get<-function() x
	#sets the inverse of matrix
	setinv<-function(inverse_matrix) inv_matrix<<-inverse_matrix
	#retrieves the inverse of matrix
	getinv<-function() inv_matrix
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
# this function takes the list of functions as the input
# returns the inverse of the matrix if it does not already exist
cacheSolve <- function(obj, ...) {
        ## Return a matrix that is the inverse of the matrix returned from the list 'obj'
        inverse_matrix<-obj$getinv()
	if (!is.null(inverse_matrix))
	{
		print('inverse stored in cache')
		return(inverse_matrix)
	}
	#get the matrix
	mat<-obj$get()
	#solve for inverse of the matrix
	inverse_matrix<-solve(mat)
	#set the inverse of the matrix
	obj$setinv(inverse_matrix)
	inverse_matrix
}
