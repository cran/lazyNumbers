% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Concat.R
\name{concat-lazyObjects}
\alias{concat-lazyObjects}
\alias{c,lazyVector-method}
\alias{c,lazyMatrix-method}
\title{Concatenation of lazy vectors}
\usage{
\S4method{c}{lazyVector}(x, ...)

\S4method{c}{lazyMatrix}(x, ...)
}
\arguments{
\item{x}{a \code{lazyVector} object or a \code{lazyMatrix} object}

\item{...}{\code{lazyVector} objects or \code{lazyMatrix} objects or numeric 
vectors or numeric matrices}
}
\value{
A \code{lazyVector} object.
}
\description{
Concatenate two or more \code{lazyVector} or \code{lazyMatrix} 
  objects.
}
