# Get numbers per recruit -------------------------------------------------
NPR <- function(S0, S1plus, nages, AgeMat, f=0){
  #' @description Calculate nums per recruit at f
  #' @param S0 calf survival (num)
  #' @param S1plus adult survival (num)
  #' @param nages plus group age (num)
  #' @param AgeMat age at maturity (num)
  #' @param f 'fishing' rate == bycatch rate (num)

  AgePart <- AgeMat+1 # Age at first parturition

  N.vec <- vector(length = nages+1) # Ages 0 thru nages --> vector 1:(nages+1)
  N.vec[1] <- 1             # Age 0
  N.vec[2] <- 1 * S0

  # AEP
  OnePlusSurv <-(S1plus*(1-f))

  for(a in 3:(nages)){
    N.vec[a] <- S0 * ( OnePlusSurv^(a-2) ) # quadruple checked
  }

  N.vec[nages+1] <- (S0 * OnePlusSurv^(nages-1) ) / (1-OnePlusSurv) # plus group age
  npr <- sum(N.vec[(AgePart+1):(nages+1)]) # REPRODUCING females (AgeMat+1 = age at first parturition)
  P1r <- sum(N.vec[2:(nages+1)]) # 1+ whales
  Outs <- list()
  Outs$npr <- npr
  Outs$P1r <- P1r
  Outs$nvec <- N.vec
  return(Outs)
}