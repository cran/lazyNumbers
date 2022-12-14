% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazyMatrices.R
\name{lazyInv}
\alias{lazyInv}
\title{Inverse of lazy matrix}
\usage{
lazyInv(M)
}
\arguments{
\item{M}{a \code{lazyMatrix} object corresponding to a square matrix}
}
\value{
A \code{lazyMatrix} object.
}
\description{
Compute the inverse of a lazy matrix.
}
\note{
This function does not check the invertibility. If the matrix is 
  not invertible, you will get some \code{NaN} in the result (after 
  calling \code{as.double}).
}
\examples{
library(lazyNumbers)
set.seed(666L)
M <- lazymat(matrix(rpois(9L, lambda = 4), nrow = 3L, ncol = 3L))
invM <- lazyInv(M)
I3 <- M \%*\% invM
as.double(I3) == diag(3)
}
