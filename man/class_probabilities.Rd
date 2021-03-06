% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point_estimate.R
\name{class_probabilities}
\alias{class_probabilities}
\alias{class_probabilities.mcmc_fit}
\alias{class_probabilities.optim_fit}
\title{Extract latent class probabilities from a rater fit object}
\usage{
class_probabilities(fit, ...)

\method{class_probabilities}{mcmc_fit}(fit, ...)

\method{class_probabilities}{optim_fit}(fit, ...)
}
\arguments{
\item{fit}{A rater fit object.}

\item{...}{Extra arguments.}
}
\value{
A I * K matrix where each element is the probably of item i being
of class k. (I is the number of items and K the number of classes).
}
\description{
Extract latent class probabilities from a rater fit object
}
\details{
The latent class probabilities are obtained by marginalising out
the latent class and then calculating, for each draw of pi and theta, the
conditional probability of the latent class given the other parameters
and the data. Averaging these conditional probabilities gives the
(unconditional) latent class probabilities retuned by this function.
}
\examples{
\donttest{

fit <- rater(anesthesia, "dawid_skene")
class_probabilities(fit)

}

}
