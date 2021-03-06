#' Count skipped songs in given time period
#'
#' Counts how many songs were skipped in given time period. Returns either a number or a percentage of all songs
#' in given time period depending on user
#'
#' @param streaming_history data.table containing streaming history, 
#' after 'prepare_streaming_history' was used on it
#' 
#' @param start_date A POSIXt,Date or string that can be coerced into Date 
#' by \code{\link{as_date}} indicating start of the period of time to count skipped songs
#' 
#' @param end_date A POSIXt,Date or string that can be coerced into Date 
#' by \code{\link{as_date}} indicating end of the period of time to count skipped songs
#' 
#' @param as_percentage logical. if FALSE (default) a number of skipped songs is returned,
#'  otherwise a character vector indicating percentage of skipped songs in given period
#'
#' @export
#'
#' @import data.table
#' 
count_skipped <-
  function(streaming_history,
           start_date,
           end_date,
           as_percentage = FALSE) {
    start_time <- end_time <- skipped <- NULL
    end_date <- as_date(end_date)
    start_date <- as_date(start_date)
    data <- streaming_history[start_date <= start_time &
                                as_date(end_date) + duration(86399, "second") >= end_time, ]
    n <- data[skipped == TRUE, .N]
    if (as_percentage) {
      return(paste(round((n / data[, .N]) * 100, digits = 2), "%", sep = ""))
    }
    return(n)
  }
