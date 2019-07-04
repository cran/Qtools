\name{midrqControl}
\alias{midrqControl}

\title{
Control parameters for aqmm estimation
}
\description{
A list of parameters for controlling the fitting process.
}

\usage{
midrqControl(method = "Nelder-Mead", ecdf_est = "npc")
}

\arguments{
	\item{method}{
		character vector that specifies the optimization algorithm in \code{\link{optim}} to fit a conditional mid-quantile model when \code{type = 1} or \code{type = 2}. Only \code{"Nelder-Mead"} has been tested.
	}

	\item{ecdf_est}{
		estimator of the (standard) conditional cumulative distribution. The options are: \code{npc} (default) for kernel estimator (Li and Racine, 2008); \code{logit}, \code{probit}, \code{cloglog} for binomial regression; \code{ao} for Aranda-Ordaz binomial regression.
	}
}


\value{
a list of control parameters.
}

\references{
Geraci, M. and A. Farcomeni. Mid-quantile regression for discrete responses. arXiv:1907.01945 [stat.ME]. URL: \url{http://arxiv.org/abs/1907.01945}.
}

\author{
Marco Geraci}

\seealso{
\code{\link{midrq}}
}
\keyword{fitting}
\keyword{control}