% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/operator_utilities.R
\name{find_query}
\alias{find_query}
\alias{project_query}
\alias{update_query}
\alias{query}
\title{Top level functions that store all of operators that make up a query}
\usage{
find_query(...)

project_query(...)

update_query(...)

query(x, ...)
}
\arguments{
\item{...}{query operators}

\item{x}{an unfinished mongo query object}
}
\value{
nested lists that can be parsed into a MongoDB query, or JSON string
}
\description{
Top level functions that store all of operators that make up a query

Query
This function is a wrapper used to make it possible to build queries using magrittr pipes
}
