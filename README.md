
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autonomy.ch

<!-- badges: start -->

[![R-CMD-check](https://github.com/thinkr-n2-mars2022/autonomy.ch/workflows/R-CMD-check/badge.svg)](https://github.com/thinkr-n2-mars2022/autonomy.ch/actions)
<!-- badges: end -->

The goal of autonomy.ch is to practice package creation

## Installation

You can install the development version of autonomy.ch from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thinkr-n2-mars2022/autonomy.ch")
```

## Function check_data_integrity

Some basic examples to show how check_data_integrity is working

# This line works:

``` r
library(autonomy.ch)

datafile <- system.file("nyc_squirrels_sample.csv", package = "autonomy.ch")
nyc_squirrels <- read.csv(datafile)

# ok: data is an existing data.frame, colname exists, data in column is OK
check_data_integrity(data = nyc_squirrels, colname = 'primary_fur_color')
#> [1] "Dataset is OK"
```

# These lines return an explicit error:

``` r
library(autonomy.ch)

#error: not a data.frame
check_data_integrity(data = NULL, colname = 'combination_of_primary_and_highlight_color')
#> Error: data is not a data frame

datafile <- system.file("nyc_squirrels_sample.csv", package = "autonomy.ch")
nyc_squirrels <- read.csv(datafile)

#error: not an existing column
check_data_integrity(data = nyc_squirrels, colname = 'not_existing_col')
#> Error: not_existing_col does not exist in data

#error: detecting forbidden pattern in existing column
check_data_integrity(data = nyc_squirrels, colname = 'combination_of_primary_and_highlight_color')
#> Error: forbidden pattern detected in combination_of_primary_and_highlight_color
```

## Code of Conduct

Please note that the my.tools project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
