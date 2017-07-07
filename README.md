# F2CI and RF2CI

This is an R package implementing the F2CI and RF2CI algorithms for causal discovery under non-stationarity and/or feedback.

# Installation

library(devtools)
install_github("ericstrobl/RCIT")
install_github("ericstrobl/F2CI")
library(RCIT)
library(F2CI)

# Example run

CMJ = instantiate_CMJ(p=20,en=2,nS=1,nL=1,nD=3);

out=F2CI(suffStat, RCoT_wrap, 0.01, gauss_mix_modeling, max.cs=4);
out$orientation_rules$G

out=RF2CI(suffStat, RCoT_wrap, 0.01, gauss_mix_modeling, max.cs=4);
out$orientation_rules$G
