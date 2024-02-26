
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

## Caveats

1.  nzdata is still in development

2.  This package will only work with resources that are ‘machine
    readable’. These are marked with this icon: ![Data
    API](images/data_api.png)

## Example

This example requests data from dataset [“A-Z listing of all Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

To find the resource ID, navigate to the resource page on
catalogue.data.govt.nz. The resource ID is the string after the last
backslash: ![URL Path](images/path.png)

``` r
library(nzdata)
streets <- get_nz_data('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')
head(streets, 10)
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
