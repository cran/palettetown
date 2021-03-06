% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palettetown.R
\name{ichooseyou}
\alias{ichooseyou}
\title{Get a pokemon palette. Alias for pokepal.}
\usage{
ichooseyou(pokemon = 1, spread = NULL)
}
\arguments{
\item{pokemon}{An integer or character pokemon name}

\item{spread}{How many, quite distinct, colours should be returned. See details.}
}
\description{
Get a pokemon palette by either giving a pokemon number or name.
The recomended syntax for this function is 
'Magikarp' \%>\% ichooseyou using the pipe operator \%>\%
from the magrittr package.
To specify the \code{spread} parameter use
'Snorlax' \%>\% ichooseyou(5)
}
\details{
If \code{spread} is given an integer, the full palette is 
 clustered into that many groups (ward clustering in HSV space). 
 The most common colour in each cluster is then returned. It is
 hoped this will give a good balance between reflecting the pokemons
 colouring while giving relatively distinct colours.
}
\examples{
library(magrittr)
pal <- 'Hoothoot' \%>\% ichooseyou
pal2 <- 'Pichu' \%>\% ichooseyou(6)

}
\seealso{
\code{\link{pokepal}}
}

