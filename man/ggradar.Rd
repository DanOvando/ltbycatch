% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggradar.R
\name{ggradar}
\alias{ggradar}
\title{Radar plot}
\usage{
ggradar(
  plot.data,
  font.radar = "Circular Air Light",
  values.radar = c("0", "", "1"),
  axis.labels = colnames(plot.data)[-1],
  grid.min = 0,
  grid.mid = 0.5,
  grid.max = 1,
  centre.y = grid.min - ((1/9) * (grid.max - grid.min)),
  plot.extent.x.sf = 1,
  plot.extent.y.sf = 1.2,
  x.centre.range = 0.02 * (grid.max - centre.y),
  label.centre.y = FALSE,
  grid.line.width = 0.5,
  gridline.min.linetype = "longdash",
  gridline.mid.linetype = "longdash",
  gridline.max.linetype = "longdash",
  gridline.min.colour = "grey",
  gridline.mid.colour = "#007A87",
  gridline.max.colour = "grey",
  grid.label.size = 7,
  gridline.label.offset = -0.1 * (grid.max - centre.y),
  label.gridline.min = TRUE,
  axis.label.offset = 1.15,
  axis.label.size = 8,
  axis.line.colour = "grey",
  group.line.width = 1.5,
  group.point.size = 4,
  background.circle.colour = "#D7D6D1",
  background.circle.transparency = 0.2,
  plot.legend = if (nrow(plot.data) > 1) TRUE else FALSE,
  legend.title = "",
  legend.text.size = grid.label.size,
  palette.vec = c("#D53E4F", "#FC8D59", "#FEE08B", "#E6F598", "#99D594", "#3288BD"),
  manual.levels = NA
)
}
\arguments{
\item{plot.data}{}

\item{manual.levels}{}
}
\description{
Radar plot
}
\details{
I modified the ggradar function slightly to do nice things that I like, like use a custom color palette, including different line types, etc.

Since this code was originally written, ggradar is now it's own official package. For more information and for the most current version of the function, see Ricardo Bion's \href{https://github.com/ricardo-bion/ggradar/}{GitHub}
}
\author{
Ricardo Bion, modified slightly by Margaret Siple
}
