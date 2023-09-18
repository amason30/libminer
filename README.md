
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/amason30/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/amason30/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide the user with an overview of your R
library setup. It is a toy package created as a part of the
posit::conf(2023) and not meant for serious use!

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("amason30/libminer")
```

## Example

To get a count of installed packages in each of your libraries,
optionally with the total sizes, use `lib_summaary()`.

``` r
library(libminer)
## basic example code

lib_summary()
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/yj/9dzgt3y51fbf33b3qvfn1crc0000gr/T/RtmpJ2zQFj/temp_libpath9f2728445c37
#>   n_packages
#> 1        275
#> 2          1
```
