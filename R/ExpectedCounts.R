
#' Calculate exoected animal counts or calculate a parameter needed to obtain a certain number of 
#'   captures.
#'
#' Calculate the expected number of animal counts in a survey or per time. Or given a required
#'   of counts (e.g. 50) calculate a parameter value needed to obtain it.
#'   Note that this requires inputting an animal density. As this is typically unknown, it is
#'   recomended that you use a lower, middle and upper `guess'.
#'    
#'
#' Note that the REM of Rowcliffe et al. 2008 can be used by setting alpha to 
#'    zero and the Gas Model of Yapp 1956 can be used setting alpha and theta
#'    to zero.
#'
#'
#'@references Lucas, T. C. D., Moorcroft, E. A., Freeman, R., Rowcliffe, J. M.,
#'    Jones, K. E. (2015), A generalised random encounter model for estimating 
#'    animal density with remote sensor data. Methods in Ecology and Evolution. 
#'    doi: 10.1111/2041-210X.12346
#'
#' Rowcliffe, J., Field, J., Turvey, S. & Carbone, C. (2008) Estimating animal 
#'    density using camera traps without the need for individual recognition. 
#'    Journal of Applied Ecology, 45, 1228–1236.
#'
#' Yapp, W. (1956) The theory of line transects. Bird Study, 3, 93–104.
#'@inheritParams gremAbundance
#'@seealso  \code{\link{gremDensity}}, \code{\link{gremAbundance}}
#'@name ExpectedCounts
#'@export

ExpectedCounts <- function(D, z = NA, alpha = NA, theta = NA, r = NA, animalSpeed = NA, t = NA){

  if(is.na(D)) stop('This function requires at least a guess of Density. If you wish to estimate density please use the function gremDensity.')
  # Check the parameters are suitable.
  if(!is.na(z)){
    if(z <= 0 | !is.numeric(z)) stop('Counts, z, must be a positive number or  NA.')
  }
  if(!is.na(animalSpeed)){
    if(animalSpeed <= 0 | !is.numeric(animalSpeed)) stop('animalSpeed must be a positive number or NA.')
  }
  if(!is.na(t)){
    if(t <= 0 | !is.numeric(t)) stop('Time, t, must be a positive number or NA.')
  }
  if(!is.na(theta)){
    if(t <= 0 | !is.numeric(t)) stop('Time, t, must be a positive number or NA.')
  }
  if(!is.na(alpha)){
    if(t <= 0 | !is.numeric(t)) stop('Time, t, must be a positive number or NA.')
  }


  if(sum(is.na(c(z, alpha, theta, r, animalSpeed, D)) > 1)){
    stop('Only one of D, z, alpha, theta, r and animalSpeed can be NA.')
  }

  if(all(!is.na(alpha, theta, r))){
    p <- calcProfileWidth(alpha, theta, r)
    if(is.na(z)
  

  # Calculate profile width, then density.
  p <- calcProfileWidth(alpha, theta, r)
  D <- z/{animalSpeed*t*p}
  return(D)
}







