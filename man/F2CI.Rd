% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F2CI.R
\name{F2CI}
\alias{F2CI}
\title{The F2CI algorithm}
\usage{
F2CI(suffStat, indepTest, alpha, mix_modeling, max.cs, SK_results = NULL)
}
\arguments{
\item{suffStat}{List of all information required for the conditional independence test}

\item{indepTest}{A conditional independence test function internally called as indepTest(x,y,z,suffStat). Tests conditional independence of x and y given z.}

\item{alpha}{Alpha value for conditional independence test}

\item{max.cs}{Maximum conditioning set size}

\item{SK_results}{Skeleton results if skeleton computed elsewhere}
}
\value{
A list containing the results obtained after the skeleton, v_structure and orientation rule procedures. Main graph output in results$orientation_rules$G
}
\description{
The F2CI algorithm
}

