
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nzdata

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

nzdata is an API wrapper for data.govt.nz

## Installation

You can install the development version of nzdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("courtneyruss/nzdata")
```

## Example

This example requests data from dataset [“A-Z listing of all Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

``` r
library(nzdata)
streets <- load_data('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')
head(streets$result$records, 10)
#>    _id          Abbot St
#> 1    1          Acton Pl
#> 2    2   Addenbrooke Tce
#> 3    3 Ahu Ahu Valley Rd
#> 4    4          Aiken Rd
#> 5    5        Airport Rd
#> 6    6        Akapuka Rd
#> 7    7         Akatea St
#> 8    8        Akepiro Pl
#> 9    9          Alexa Pl
#> 10  10      Alexander St
```
