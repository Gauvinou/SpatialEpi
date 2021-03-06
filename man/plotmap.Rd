\name{plotmap}
\alias{plotmap}
\title{Plot Levels of a Variable in a Colour-Coded Map}
\description{Plot levels of a variable in a colour-coded map.}
\usage{
plotmap(values, map, log = FALSE, nclr = 7, include.legend = TRUE, lwd = 0.5, 
round = 3, brks = NULL, legend = NULL, location = "topright", rev = FALSE)
}
\arguments{
  \item{values}{variable to plot}
  \item{map}{an object of class SpatialPolygons (See \link[sp]{SpatialPolygons-class})}
  \item{log}{boolean of whether to plot values on log scale}
  \item{nclr}{number of colour-levels to use}
  \item{include.legend}{boolean of whether to include legend}
  \item{lwd}{line width of borders of areas}
  \item{round}{number of digits to round to in legend}
  \item{brks}{if desired, pre-specified breaks for legend}
  \item{legend}{if desired, a pre-specified legend}
  \item{location}{location of legend}
  \item{rev}{boolean of whether to reverse colour scheme (darker colours for smaller values)}
}
\value{A map colour-coded to indicate the different levels of \code{values}.}
\seealso{ 
	\code{\link{mapvariable}}
}
\author{Albert Y. Kim}
\examples{
## Load data
data(scotland)
map <- scotland$spatial.polygon
y <- scotland$data$cases
E <- scotland$data$expected
SMR <- y/E

## Plot SMR
plotmap(SMR, map, nclr=9, location="topleft")
}
\keyword{file}
