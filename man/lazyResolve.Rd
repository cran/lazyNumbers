% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazyNumbers.R
\name{lazyResolve}
\alias{lazyResolve}
\title{Resolve lazy numbers}
\usage{
lazyResolve(x)
}
\arguments{
\item{x}{a \code{lazyVector} object or a \code{lazyMatrix} object}
}
\value{
Invisibly returns the lazy vector or matrix \code{x}, resolved.
}
\description{
Resolve the lazy numbers in a lazy vector or a lazy matrix; 
  see details.
}
\details{
When an operation between lazy numbers is performed, the resulting 
  lazy number is not the result of the operation, it is the unevaluated 
  operation (wherefrom the word "lazy"). This function performs the 
  evaluation of the operations contained in the lazy numbers of the 
  vector/matrix; the returned lazy vector/matrix has the same values as the 
  input lazy vector/matrix. Applying this function can help to avoid a stack 
  overflow.
}
\note{
Once you call \code{as.double} on a lazy number, 
  then this number is resolved (see the example).
}
\examples{
\donttest{library(lazyNumbers)
n <- 500
p <- seq(1, n, by = 1)
q <- seq(3, 2*n + 1, by = 2)
# fast, because the operations are not evaluated:
x1 <- 2 * (1 + sum(cumprod(lazynb(p) / lazynb(q))))
x2 <- 2 * (1 + sum(cumprod(lazynb(p) / lazynb(q))))
x3 <- 2 * (1 + sum(cumprod(lazynb(p) / lazynb(q))))
# slow, because this evaluates the operations:
lazyResolve(x1)
# fast, because `x1` is resolved now:
as.double(x1)
# slow, because `x2` must be resolved:
as.double(x2)
# fast, because the call to `as.double` has resolved `x2`
as.double(x2)
# slow, because `x3` is not resolved:
x1 == x3
# fast, because `x3` has been resolved by the equality test:
as.double(x3)}
}
