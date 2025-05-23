% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/high_dimensional_long_surv_jm.R
\name{omics_data_gen_surv}
\alias{omics_data_gen_surv}
\title{Function for generating multi-omics (M-modal) data}
\usage{
omics_data_gen_surv(
  m_i,
  Zeta,
  Xi,
  PsiF,
  sing_val,
  obsTIME = NULL,
  Data_Var,
  Tgrid = seq(0, 1, length.out = 101),
  surv_time = NULL
)
}
\arguments{
\item{Xi}{feature singular vector for all modalities ( a list of M elements)}

\item{PsiF}{is a list of M elements; each element is also a list with r
elements which are functions}

\item{Data_Var}{a vector of M elements represent measurement error variances
for different data modalities}

\item{N}{number of subjects}

\item{n_i}{number of measurements (repeated data) from subject i}

\item{M}{number of modalities}

\item{XMatrix}{design matrix for subject specific mean}

\item{Beta}{regression parameters for subject specific mean}

\item{SubE_Var}{a list of M elements; each is a vector of r elements
represent the variance parameters for subject-loading model}
}
\value{
a list 3  elements
\itemize{
\item data : a list of N elements, each is a matrix of P+1 by m_i. The first
row is the observed time points.
\item zeta : subject-specific loading used to data generation
\item singF : singular functions
}
for subject-specific data
}
\description{
Function for generating multi-omics (M-modal) data
}
