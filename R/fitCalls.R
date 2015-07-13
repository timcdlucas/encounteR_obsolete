


#' Fit the call width parameter to data.
#'
#' If you have data of the strength of an animal's call across a number of 
#'    angles from the animal centre line, this function can use OLD to fit an 
#'    alpha value for use in \code{\link{gremAbundance}} or
#'    \code{\link{gremDensity}}.
#'
#' This function uses OLS to fit a sector shaped call to data. This may or may
#'    may not be the most appropriate fitting method. 
#' 
#'@param data A two column data.frame or matrix with angles in radians in the 
#'    first column and call intensity/volume etc. in the second column.
#'@seealso \code{\link{gremAbundance}}, \code{\link{gremDensity}}
#'@name fitCallWidth

fitCallWidth <- function(data, ...){

  start <- c(min(data[, 1]) / 2, min(data[, 2]))
  lowLim <- c(0, 0)
  highLim <- c(pi, max(data[, 2]))
  
  result <- optim(par = start, min.OLS, data = data, method = 'L-BFGS-B', lower = lowLim, upper = highLim)

  alpha <- result$par[1] * 2
  return(alpha)

}




#' Squared error of a uniform distribution for use in optimization
#'
#' Assumes height of uniform is c and bounds of the distribution are symetric
#'    around zero with value a.
#'
#' This function is only for use in \code{optim} via \code{min.OLS}.
#' 
#'@param data Length two vector giving angle and intensity/audible distance etc.
#'@param a Bounds of uniform distribution [-a, a].
#'@param c Height of the uniform distribution
#'@seealso \code{\link{min.OLS}}
#'@name uniformError

uniformError <- function(data, a, c){
  if(data[1] > -a & data[1] < a){
    e <- (data[[2]] - c)^2
  } else { 
    e <- data[[2]]^2
  }
  return(e)
}



#' Summed squared error of uniform distribution.
#'
#' Assumes height of uniform is c and bounds of the distribution are symetric
#'    around zero with value a.
#'
#' This function is only for use in \code{optim}.
#' 
#'@param data Two column data frame or matrix with angle in the first column and intensity in the second.
#'@param par Length two vector giving parameters a and c.
#'@seealso \code{\link{uniformError}}
#'@name min.OLS

min.OLS <- function(data, par) {
                e <- sum(apply(dat, 1, function(xy) uniformError(xy, par[1], par[2]) ))
             }

