% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_sampnames.R
\name{custom_sampnames}
\alias{custom_sampnames}
\title{Creates custom sample names for plots}
\usage{
custom_sampnames(omicsData, firstn = NULL, from = NULL, to = NULL,
  delim = NULL, components = NULL)
}
\arguments{
\item{omicsData}{omicsData an object of the class 'pepData', 'proData', 'metabData', or 'lipidData', usually created by \code{pepData}, \code{proData}, \code{metabData}, or \code{lipidData}, respectively.}

\item{firstn}{is an integer specifying the first n characters to keep as the sample name}

\item{from}{is an integer specifying the start of the range of characters to keep as the sample name}

\item{to}{is an integer specifying the end of the range of characters to keep as the sample name}

\item{delim}{is a delimiter to separate sample name components by}

\item{components}{an integer vector specifying which components separated by delim to keep as sample name}
}
\description{
This helper function creates custom sample names for plot data object function
}
\details{

}
\examples{
dontrun{
data(pep_object)
results = custom_sampnames(pep_object, firstn = 5)
} 

}
