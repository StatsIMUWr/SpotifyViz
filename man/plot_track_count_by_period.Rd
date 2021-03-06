% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_track_count_by_period.R
\name{plot_track_count_by_period}
\alias{plot_track_count_by_period}
\title{Visualize number of tracks played by period}
\usage{
plot_track_count_by_period(
  filtered,
  period = "weekday",
  as_percentage = TRUE,
  include_skipped = FALSE,
  by_weekday = FALSE
)
}
\arguments{
\item{filtered}{A data.table containing streaming history, after 'prepare_streaming_history' 
was used on it.}

\item{period}{A character vector indicating for which periods to split the time for 
counting tracks played. 
Permitted values are: "weekday", "hour"}

\item{as_percentage}{A logical scalar. If TRUE (default) bars show percentage 
of all tracks played for each weekday.}

\item{include_skipped}{A logical scalar indicating whether to include tracks that were skipped}

\item{by_weekday}{A logical scalar indicating whether to split the graph by weekdays 
if period is "hour"}
}
\description{
Visualizes, using a bar chart, the number or percentage of songs that were played on different hours/weekdays. 
If split by hours, can be also faceted by weekday.
}
