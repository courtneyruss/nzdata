
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nzdata

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

nzdata is an API wrapper for data.govt.nz

## Installation

You can install the development version of nzdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("courtneyruss/nzdata")
```

## Caveat

get_nz_data() will only work with resources that are ‘machine readable’.
These are marked with this icon: ![Data API](images/data_api.png)

## Useage

### Get Resource

These examples request data from [“A-Z listing of all Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

To find the resource ID, navigate to the resource page on
catalogue.data.govt.nz. The resource ID is the string after the last
backslash: ![Data API](images/path.png)

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

### Get Resource Metadata

``` r
library(nzdata)
streets <- nz_resource_metadata('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')

streets$created
#> $created
#> [1] "2017-03-15T16:18:52.672330"

streets$format
#> $format
#> [1] "CSV"

streets$name
#> $name
#> [1] "WDC streets"
```

### Get Dataset Metadata

this example requests data from [Directory of educational
institutions]('https://catalogue.data.govt.nz/dataset/directory-of-educational-institutions')

``` r
library(nzdata)
schools <- nz_dataset_metadata('directory-of-educational-institutions')

schools$author
#> $author
#> [1] "Ministry of Education"

schools$frequency_of_update
#> $frequency_of_update
#> [1] "Continuously updated"

schools$metadata_modified
#> $metadata_modified
#> [1] "2024-02-29T19:30:17.703637"
```
