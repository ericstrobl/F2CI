#' Joint (bivariate) conditional density mixture modeling of all possible subsets
#' @param a First non-conditioning variable number
#' @param b Second non-conditioning variable number
#' @param cond_set Conditioning set variable numbers
#' @return mix_res Single positive integer specifying number of mixtures for p(a,b|cond_set)

mix_modeling_all <- function(a, c, cond_set, suffStat, mix_modeling){

  Ord <- 0L
  nSep = length(cond_set);
  Done <- FALSE
  cond_set = setdiff(cond_set, c(a,c));

  mix_results=1;

  mix_res = mix_modeling(a,c,NULL,suffStat,joint=TRUE);
  if (mix_res == 2) {mix_results=2; Done=TRUE;}

  while (!Done && Ord < nSep) {
    Ord <- Ord + 1L
    S.j <- if (Ord == 1 && nSep == 1)
      matrix(cond_set, 1, 1)
    else combn(cond_set, Ord)
    for (i in seq_len(ncol(S.j))) {

      mix_res = mix_modeling(a,c,S.j[, i],suffStat,joint=TRUE);
      if (mix_res == 2) {
        mix_results = 2;
        Done=TRUE;
        break;
      }

    }
  }

  return(mix_results)

}
