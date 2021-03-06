#' Calculate normalized sustainable yield
#' @description This function calculates the normalized sustainable yield, which is used to find MNPL (the population size at which productivity is maximized).
#'
#' @param S0 Calf/pup survival
#' @param S1plus 1+ survival (usually called "juvenile + adult" in literature)
#' @param nages Same as plus group age, called "maximum (lumped) age-class" in Annex R
#' @param K1plus 1+ carrying capacity
#' @param AgeMat Age at maturity (= age at first parturition - 1)
#' @param z degree of compensation
#' @param E exploitation rate
#' @param P0 unfished nums per recruit - 1+ adults
#' @param N0 unfished nums per recruit - mature adults
#' @return a single value of normalized yield for exploitation rate E
#'
#' @export
cE <- function(S0, S1plus, nages,K1plus,AgeMat, z, lambdaMax, E, A, P0, N0){
  npr1plus <- NPR(S0 = S0,
                  S1plus = S1plus,
                  nages = nages,
                  AgeMat = AgeMat,
                  f = E)$P1r # 1+ nums per recruit @ E, written as P[tilde](E)
  recatF <- getRF(E = E,
                  S0 = S0,
                  S1plus = S1plus,
                  nages = nages,
                  K1plus = K1plus,
                  AgeMat = AgeMat,
                  z = z,
                  A = A,
                  P0 = P0,
                  N0 = N0) # recruitment at E=E
  recat0 <- 1  # recruitment at E=0 ("unfished")
  rel_rec <- recatF/recat0 # normalized recruitment when E=E, known as B(E)
  cpr1plus <- E * rel_rec * npr1plus # 1+ catch-per-recruit at exploitation rate E, AKA normalized sustainable yield
  return(cpr1plus)
}
