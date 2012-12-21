\name{unlist}

\alias{unlist}

\title{Flatten list-like objects}

\description{
  Given a list-like object \code{x}, \code{unlist} produces a vector-like
  object obtained by concatenating (conceptually thru \code{\link{c}}) all
  the top-level elements in \code{x} (each of them being expected to be
  a vector-like object, typically).

  NOTE: This man page is for the \code{unlist}
  \emph{S4 generic function} defined in the BiocGenerics package.
  See \code{?base::\link[base]{unlist}} for the default method
  (defined in the base package).
  Bioconductor packages can define specific methods for objects
  not supported by the default method.
}

\usage{
unlist(x, recursive=TRUE, use.names=TRUE)
}

\arguments{
  \item{x}{
    A list-like R object.
  }
  \item{recursive, use.names}{
    See \code{?base::\link[base]{unlist}} for a description of
    these arguments.
  }
}

\value{
  See \code{?base::\link[base]{unlist}} for the value returned
  by the default method.

  Specific methods defined in Bioconductor packages should
  behave as consistently as possible with the default method.
}

\seealso{
  \code{base::\link[base]{unlist}} for the default
  \code{unlist} method.

  \code{\link[methods]{showMethods}} for displaying a summary of the
  methods defined for a given generic function.

  \code{\link[methods]{selectMethod}} for getting the definition of
  a specific method.

  \link[IRanges]{unlist,List-method} in the IRanges package
  for an example of a specific \code{unlist} method (defined for
  \link[IRanges]{List} objects).

  \link{BiocGenerics} for a summary of all the generics defined
  in the BiocGenerics package.
}

\examples{
unlist  # note the dispatch on the 'x' arg only
showMethods("unlist")
selectMethod("unlist", "ANY")  # the default method
}

\keyword{methods}