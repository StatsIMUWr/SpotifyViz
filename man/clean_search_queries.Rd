% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_search_queries.R
\docType{data}
\name{clean_search_queries}
\alias{clean_search_queries}
\title{Clean search queries}
\format{
A data table with 10 rows and 3 variables:
\describe{
  \item{date}{Date, the day the search was performed }
  \item{platform}{Platform on which the search was performed}
  \item{country}{Country in which the search was performed}
}
}
\usage{
clean_search_queries
}
\description{
A dataset with search queries,result of using make_search_queries_dt() on JSON file, 
selected from Wiktor's data from spotify, prepared for testing and vignettes.
}
\keyword{datasets}
