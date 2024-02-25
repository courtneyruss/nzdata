
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nzdata

<!-- badges: start -->

\#’ <!-- badges: end -->

nzdata is an API wrapper for data.govt.nz.

## Installation

You can install the development version of nzdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("courtneyruss/nzdata")
```

## Example

This example requests data from the data source [“A-Z listing of all
Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

``` r
library(nzdata)
streets <- load_data('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')
streets
#> $help
#> [1] "https://catalogue.data.govt.nz/api/3/action/help_show?name=datastore_search"
#> 
#> $success
#> [1] TRUE
#> 
#> $result
#> $result$include_total
#> [1] TRUE
#> 
#> $result$limit
#> [1] 100
#> 
#> $result$records_format
#> [1] "objects"
#> 
#> $result$resource_id
#> [1] "2f4e30a7-091f-4aed-b18f-4b21cc19e6b4"
#> 
#> $result$total_estimation_threshold
#> NULL
#> 
#> $result$records
#>     _id          Abbot St
#> 1     1          Acton Pl
#> 2     2   Addenbrooke Tce
#> 3     3 Ahu Ahu Valley Rd
#> 4     4          Aiken Rd
#> 5     5        Airport Rd
#> 6     6        Akapuka Rd
#> 7     7         Akatea St
#> 8     8        Akepiro Pl
#> 9     9          Alexa Pl
#> 10   10      Alexander St
#> 11   11        Allison St
#> 12   12           Alma Rd
#> 13   13          Anaua St
#> 14   14        Andrews Pl
#> 15   15          Anson St
#> 16   16         Antrim Pl
#> 17   17         Anzac Pde
#> 18   18        Aorangi Rd
#> 19   19          Aotea St
#> 20   20        Aranui Ave
#> 21   21          Arawa Pl
#> 22   22         Argyle St
#> 23   23      Armstrong Pl
#> 24   24          Arran Pl
#> 25   25        Arundel Pl
#> 26   26       Arundell Rd
#> 27   27            Ash Pl
#> 28   28        Ashton Tce
#> 29   29         Atene Trk
#> 30   30        Attrill Pl
#> 31   31           Avon Pl
#> 32   32         Awatea St
#> 33   33        Babbage Pl
#> 34   34     Balgownie Ave
#> 35   35       Ballance St
#> 36   36     Balmoral Cres
#> 37   37         Bamber St
#> 38   38          Banks Pl
#> 39   39        Barrack St
#> 40   40        Bassett St
#> 41   41        Bastia Ave
#> 42   42          Bates St
#> 43   43          Beach Rd
#> 44   44        Beachcroft
#> 45   45     Beaumaris Ave
#> 46   46       Bedford Ave
#> 47   47           Bell St
#> 48   48        Belmont Rd
#> 49   49      Benefield St
#> 50   50        Bennett St
#> 51   51           Bens Pl
#> 52   52        Bignell St
#> 53   53          Birch Pl
#> 54   54          Blair St
#> 55   55       Blueskin Rd
#> 56   56          Blyth St
#> 57   57         Bombay St
#> 58   58        Borlase Pl
#> 59   59          Boyd Ave
#> 60   60      Boydfield St
#> 61   61     Bradleys Line
#> 62   62        Brassey Rd
#> 63   63        Bristow St
#> 64   64     Broadhead Ave
#> 65   65     Broadview Hts
#> 66   66       Brooking St
#> 67   67       Brougham Pl
#> 68   68      Broughton St
#> 69   69          Bruce Rd
#> 70   70      Brunswick Rd
#> 71   71          Bryce St
#> 72   72     Buckingham Pl
#> 73   73          Budge St
#> 74   74        Bullock Dr
#> 75   75     Burma Hill Rd
#> 76   76         Burmah St
#> 77   77          Burns St
#> 78   78        Burrell Rd
#> 79   79        Burton Ave
#> 80   80         Burtts Rd
#> 81   81     Bushy Park Rd
#> 82   82           Bute Pl
#> 83   83         Buxton Rd
#> 84   84       Caffray Ave
#> 85   85         Caius Ave
#> 86   86      Cambridge St
#> 87   87      Camellia Ave
#> 88   88   Cameron Rd East
#> 89   89   Cameron Rd West
#> 90   90       Cameron Tce
#> 91   91       Campbell Rd
#> 92   92       Campbell St
#> 93   93       Carlton Ave
#> 94   94         Carson St
#> 95   95         Cathro Rd
#> 96   96         Cavell Pl
#> 97   97      Caversham Rd
#> 98   98          Cedar Dr
#> 99   99       Central Ave
#> 100 100        Charles Cl
#> 
#> $result$fields
#>         id type
#> 1      _id  int
#> 2 Abbot St text
#> 
#> $result$`_links`
#> $result$`_links`$start
#> [1] "/api/3/action/datastore_search?resource_id=2f4e30a7-091f-4aed-b18f-4b21cc19e6b4"
#> 
#> $result$`_links`$`next`
#> [1] "/api/3/action/datastore_search?resource_id=2f4e30a7-091f-4aed-b18f-4b21cc19e6b4&offset=100"
#> 
#> 
#> $result$total
#> [1] 732
#> 
#> $result$total_was_estimated
#> [1] FALSE
```
