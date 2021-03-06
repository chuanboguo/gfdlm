% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/figures-radar.R
\name{plot_radar}
\alias{plot_radar}
\alias{plot_radar_facet}
\title{Create a radar plot}
\usage{
plot_radar(pm_df, palette = "Set2", custom_pal = NULL, ...)

plot_radar_facet(pm_df_list, custom_pal = NULL, ncol = NULL, nrow = NULL, ...)
}
\arguments{
\item{pm_df}{A performance metric data frame from \code{\link[=get_probs]{get_probs()}}.}

\item{palette}{A palette color as recognized by \code{\link[ggplot2:scale_color_brewer]{ggplot2::scale_color_brewer()}}}

\item{custom_pal}{A named character vector of custom colors to pass to
\code{\link[ggplot2:scale_color_manual]{ggplot2::scale_color_manual()}}. This argument is used in favour of
\code{palette} if specified.}

\item{...}{Other arguments to pass to \code{\link[ggspider:spider_web]{ggspider::spider_web()}} or \code{\link[=plot_radar]{plot_radar()}}.}

\item{pm_df_list}{A named list of performance metric data frames from
\code{\link[=get_probs]{get_probs()}}. The names will be used as the plot labels.}

\item{ncol}{An optional number of columns in the grid.}

\item{nrow}{An optional number of rows in the grid.}
}
\value{
A ggplot object
}
\description{
Create a radar plot
}
\examples{
probs <- get_probs(mse_example, "P40", "P100", "PNOF", "LTY", "AAVY")
plot_radar(probs)
probs <- get_probs(mse_example, "P40", "P100", "PNOF", "LTY", "AAVY")
pm <- list()
pm[[1]] <- get_probs(mse_example, "P40", "P100", "PNOF", "LTY", "AAVY")
pm[[2]] <- get_probs(mse_example, "P40", "P100", "PNOF", "LTY", "AAVY")
names(pm) <- c("Scenario 1", "Scenario 2")
plot_radar_facet(pm)
}
