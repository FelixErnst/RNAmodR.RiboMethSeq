% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Modifier-RiboMethSeq-class.R,
%   R/Modifier-RiboMethSeq-viz.R
\name{ModRiboMethSeq-functions}
\alias{ModRiboMethSeq-functions}
\alias{aggregate}
\alias{modify}
\alias{settings}
\alias{plotData}
\alias{plotDataByCoord}
\alias{settings<-,ModRiboMethSeq-method}
\alias{aggregateData,ModRiboMethSeq-method}
\alias{findMod,ModRiboMethSeq-method}
\alias{getDataTrack,ModRiboMethSeq-method}
\alias{plotDataByCoord,ModRiboMethSeq,GRanges-method}
\alias{plotData,ModRiboMethSeq-method}
\alias{plotDataByCoord,ModSetRiboMethSeq,GRanges-method}
\alias{plotData,ModSetRiboMethSeq-method}
\title{Functions for ModRiboMethSeq}
\usage{
\S4method{settings}{ModRiboMethSeq}(x) <- value

\S4method{aggregateData}{ModRiboMethSeq}(x)

\S4method{findMod}{ModRiboMethSeq}(x)

\S4method{getDataTrack}{ModRiboMethSeq}(x, name, type, ...)

\S4method{plotDataByCoord}{ModRiboMethSeq,GRanges}(
  x,
  coord,
  type = c("ends", "scoreA", "scoreB", "scoreRMS", "scoreMean"),
  window.size = 15L,
  ...
)

\S4method{plotData}{ModRiboMethSeq}(
  x,
  name,
  from = 1L,
  to = 30L,
  type = c("ends", "scoreA", "scoreB", "scoreRMS", "scoreMean"),
  ...
)

\S4method{plotDataByCoord}{ModSetRiboMethSeq,GRanges}(
  x,
  coord,
  type = c("scoreRMS", "ends", "scoreA", "scoreB", "scoreMean"),
  window.size = 15L,
  ...
)

\S4method{plotData}{ModSetRiboMethSeq}(
  x,
  name,
  from = 1L,
  to = 30L,
  type = c("scoreRMS", "ends", "scoreA", "scoreB", "scoreMean"),
  ...
)
}
\arguments{
\item{x}{a \code{\link[RNAmodR:Modifier-class]{Modifier}} or a
\code{\link[RNAmodR:ModifierSet-class]{ModifierSet}} object. For more
details see also the man pages for the functions mentioned below.}

\item{value}{See \code{\link[RNAmodR:Modifier-class]{settings}}}

\item{coord, name, from, to, type, window.size, ...}{See 
\code{\link[RNAmodR:plotData]{plotData}}}
}
\value{
\itemize{
\item{\code{settings}} {See 
\code{\link[RNAmodR:Modifier-functions]{settings}}.}
\item{\code{aggregate}} {See \code{\link[RNAmodR:aggregate]{aggregate}}.}
\item{\code{modify}} {See \code{\link[RNAmodR:modify]{modify}}.}
\item{\code{getDataTrack}} {a list of 
\code{\link[Gviz:DataTrack-class]{DataTrack}} object.}
\item{\code{plotData}} {See 
\code{\link[RNAmodR:plotData]{plotDataByCoord}}.}
\item{\code{plotDataByCoord}} {See 
\code{\link[RNAmodR:plotData]{plotDataByCoord}}.}
}
}
\description{
All of the functions of \code{\link[RNAmodR:Modifier-class]{Modifier}} and
the \code{\link[RNAmodR:ModifierSet-class]{ModifierSet}} classes are
inherited by the \code{ModRiboMethSeq} and \code{ModSetRiboMethSeq} classes.
}
\details{
\code{ModRiboMethSeq} specific arguments for 
\code{\link[RNAmodR:plotData]{plotData}}:
\itemize{
\item{\code{colour} - }{a named character vector of \code{length = 4} 
for the colours of the individual histograms. The names are expected to be 
\code{c("ends","scoreA","scoreB","scoreRMS","scoreMean")}}
}
}
\examples{
data(msrms,package="RNAmodR.RiboMethSeq")
mrms <- msrms[[1]]
settings(mrms)
aggregate(mrms)
modify(mrms)
getDataTrack(mrms, "1", mainScore(mrms))
}
