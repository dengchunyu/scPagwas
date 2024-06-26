% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap_result_visualize.R
\name{Bootstrap_P_Barplot}
\alias{Bootstrap_P_Barplot}
\title{Bootstrap_P_Barplot}
\usage{
Bootstrap_P_Barplot(
  p_results,
  p_names,
  title = "Test scPagwas",
  figurenames = NULL,
  width = 5,
  height = 7,
  do_plot = TRUE
)
}
\arguments{
\item{p_results}{vector p results}

\item{p_names}{names for p}

\item{title}{The title names of the plot}

\item{figurenames}{The filename and address of the output plot,
default is "test_barplot.pdf".IF figurenames= NULL, only plot the figure
and have not pdf figure.}

\item{width}{figure width, default is 5}

\item{height}{figure height,default is 7}

\item{do_plot}{whether to plot the plot.}
}
\value{
A figure of barplot in pdf format, red color is significant.
}
\description{
This bar plot shows the -log2(p value) for bootstrap result,
using the ggplot packages
}
\examples{
library(scPagwas)
load(system.file("extdata", "Pagwas_data.RData", package = "scPagwas"))

Bootstrap_P_Barplot(
  p_results = Pagwas_data@misc$bootstrap_results$bp_value[-1],
  p_names = rownames(Pagwas_data@misc$bootstrap_results)[-1],
  width = 5,
  height = 7,
  do_plot = TRUE,
  title = "Test"
)
}
\author{
Chunyu Deng
}
\keyword{Barplot}
\keyword{Bootstrap_P_Barplot,}
\keyword{bootstrap}
\keyword{celltypes}
\keyword{for}
\keyword{plot}
\keyword{result.}
\keyword{scPagwas}
\keyword{the}
