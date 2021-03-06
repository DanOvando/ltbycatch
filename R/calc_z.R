#' Calculate z (degree of compensation)
#'
#' @param MNPL_in User-specified value for MNPL (between 0 and 1)
#' @param lh.params_in a list of life history parameters
#' @details Helper function for getting Z when user specifies MNPL
#'
#' @return
#' @export
#'
#' @examples
#' (test.z <- calc_z(MNPL_in = 0.4,lh.params_in = lh.params1))
calc_z <- function(MNPL_in, lh.params_in){
  lims <- c(0.107,7) # z limits from AEP meeting were 0 and 7, the lower limit I increased bc too low z is a problem.
  zero.cross <- tryCatch(
    uniroot(f = get_dz,interval = lims,tol=1e-7,MNPL = MNPL_in,lh.params = lh.params_in), error = function(e) {'x'}
  )
  if(is.character(zero.cross)){stop(safeError("Error in solving for z. Try a smaller value of MNPL."))}
  z.out <- zero.cross$root
  return(z.out)
}
