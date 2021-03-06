% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prob.rebuilt.goal.R
\name{prob.rebuilt.goal}
\alias{prob.rebuilt.goal}
\title{Calculate the probability of reaching a rebuilding goal}
\usage{
prob.rebuilt.goal(traj, goal = 0.5 * lh.params.test$K1plus, rebuild.yr = 100)
}
\arguments{
\item{traj}{- a matrix of trajectories, with rows=nsims and cols=nyears}

\item{goal}{- what the rebuild goal is-- right now it is max net productivity level (MNPL), the pop size at which max population growth occurs. usually ~0.5-0.6 K for whales.}

\item{rebuild.yr}{- the year by which you want pop to be recovered (calculate probability that pop will recover to MNPL by rebuild.yr)}
}
\value{
- the probability that each stock will be rebuilt to MNPL by year rebuilt.yr
}
\description{
- a simple function that calculates the probability of recovery to MNPL (or other) after rebuilt.yr years
}
