##########################################################
## The following uses renv to help with reproducibility ##
##########################################################

# Uncomment the codes in this section if you would like to use it with your
# Check if renv is installed and load it
# if (!require("renv", character.only = TRUE)) {
#    install.packages("renv")
#    library("renv", character.only = TRUE)
#  }

# Initialize renv and restore packages from the lockfile
# renv::init()
# renv::restore()

#############################################
## The following loads the needed packages ##
#############################################

# load your virtual environment for the project

# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", "lubridate", # for wrangling
  "patchwork", "maps", "scales", # for plotting
  "knitr", "kableExtra", "rmarkdown", # for the report
  "reticulate", # for using python
  "caret", # for the modelling part
  # Additional packages:
  "tsibbledata", # Package for time series data sets.
  "flextable", # Package for creating flexible tables in R.
  "readxl", # Package for reading Excel files into R.
  'hts', # Package for hierarchical and grouped time series.
  "fpp3","fable","tsibble","dplyr", "lubridate", # for time series analysis
  "plotly", "ggplot2", "plotly", "viridis", # for interactive plots
  "reactable", # for interactive tables
  "gtsummary" # for summary tables
  )

# Install missing packages and load all the required libraries
purrr::walk(packages, function(pkg) {
  if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
    install.packages(pkg, quiet = TRUE)
    suppressMessages(library(pkg, character.only = TRUE))
  }
})

########################################
## The following sets the python path ##
########################################
# use_python("C:/Python312/python.exe")
# py_config()

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.height = 4,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = TRUE
)


