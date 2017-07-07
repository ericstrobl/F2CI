# F2CI and RF2CI

This is an R package implementing the F2CI and RF2CI algorithms for causal discovery under non-stationarity and/or feedback.

# Installation

> library(devtools)

> install_github("ericstrobl/RCIT")

> install_github("ericstrobl/F2CI")

> library(F2CI)

# Example Run

> CMJ = instantiate_CMJ(p=20, en=2, nS=1, nL=1, nD=3); #instantiates a Gaussian CMJ

> data = generate_mix_dataset(CMJ, 1000); #samples from the Gaussian CMJ

> suffStat = list(data=data);

> out_F2CI=F2CI(suffStat, indepTest=RCoT_wrap, alpha=0.01, mix_modeling=gauss_mix_modeling, max.cs=4); #the F2CI algorithm; this run takes around 5 minutes

> out_F2CI$orientation_rules$G

> out_RF2CI=RF2CI(suffStat, indepTest=RCoT_wrap, alpha=0.01, mix_modeling=gauss_mix_modeling, max.cs=4);  #the RF2CI algorithm; this run takes around 3 minutes

> out_RF2CI$orientation_rules$G
