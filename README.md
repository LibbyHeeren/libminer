
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/LibbyHeeren/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/LibbyHeeren/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to help you understand your libraries better,
and learn how to write packages (this was a practice package in a
workshop).

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("LibbyHeeren/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                 Library
#> 1                                    C:/Program Files/R/R-4.2.2/library
#> 2                        C:/Users/libby/AppData/Local/R/win-library/4.2
#> 3 C:/Users/libby/AppData/Local/Temp/RtmpCmhsWn/temp_libpath49b053061e1d
#>   n_packages
#> 1         30
#> 2        246
#> 3          1

# You can also calculate sizes

lib_summary(sizes = TRUE)
#>                                                                 Library
#> 1                                    C:/Program Files/R/R-4.2.2/library
#> 2                        C:/Users/libby/AppData/Local/R/win-library/4.2
#> 3 C:/Users/libby/AppData/Local/Temp/RtmpCmhsWn/temp_libpath49b053061e1d
#>   n_packages  lib_size
#> 1         30  66912994
#> 2        246 551561530
#> 3          1     16986
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
