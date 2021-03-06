% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_pmartR.R
\name{plot.proteomicsFilt}
\alias{plot.proteomicsFilt}
\title{plot.proteomicsFilt}
\usage{
\method{plot}{proteomicsFilt}(filter_object, mapping = "both",
  cumulative = TRUE, log_scale = TRUE, min_num_peps = NULL, ...)
}
\arguments{
\item{mapping}{whether to display a histogram of the number of peptides mapping to a protein for all proteins (mapping = 'pep_to_pro'), a histogram of the number of proteins mapped to by each peptide (mapping = "pro_to_pep"), or 'both'.  Defaults to "both"}

\item{cumulative}{logical specifying whether the peptide to protein mapping should be cumulative or at each value i.e. number of proteins with \emph{at least} x (TRUE) peptides mapping to it, or \emph{exactly} x (FALSE) peptides mapping to it.  Defaults to TRUE}

\item{log_scale}{TRUE or FALSE specifying whether or not to plot the x-axis on the log scale, defaults to TRUE}

\item{min_num_peps}{an optional integer value between 1 and the maximum number of peptides that map to a protein in the data. The value specifies the minimum number of peptides that must map to a protein. Any protein with less than \code{min_num_peps} mapping to it will be returned as a protein that should be filtered. Default value is NULL.}

\item{...}{Additional arguments
\tabular{ll}{
\code{x_lab} \tab character string to be used for x-axis label. Defaults to NULL, in which case a default label is used. \cr
\code{y_lab} \tab character string to be used for y-axis label. Defaults to NULL, in which case a default label is used. \cr
\code{title_plot} \tab character string to be used for the plot title. Defaults to NULL, in which case a default title is used. \cr
\code{title_size} \tab integer value specifying the font size for the plot title. Default is 14. \cr
\code{x_lab_size} \tab integer value indicating the font size for the x-axis. Defaults to 11. \cr
\code{y_lab_size} \tab integer value indicating the font size for the y-axis. Defaults to 11. \cr
\code{xlim} \tab length 2 numeric vector specifying x-axis limits for the peptide to protein plot.  Defaults to NULL, which gives default ggplot2 axis limits \cr
\code{ylim} \tab length 2 numeric vector specifying y-axis limits for the peptide to protein plot.  Defaults to NULL, which gives default ggplot2 axis limits \cr
\code{bw_theme} \tab logical indicator of whether to use the "theme_bw". Defaults to FALSE, in which case the ggplot2 default theme is used. \cr
}}
}
\description{
For plotting an S3 object of type 'proteomicsFilt':
}
\examples{
data(pep_object)
profilt <- proteomics_filter(pep_object)
plot(profilt, min_num_peps = 5)
plot(profilt, min_num_peps = 10, cumulative = FALSE)

}
