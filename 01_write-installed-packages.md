01_write-installed-packages.R
================
Catherine kim
2022-07-27

``` r
# an insightful comment

library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──

    ## ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
    ## ✔ tibble  3.1.7     ✔ dplyr   1.0.9
    ## ✔ tidyr   1.2.0     ✔ stringr 1.4.0
    ## ✔ readr   2.1.2     ✔ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
pkgs <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
write_csv("installed-pkgs.csv")

pkgs
```

    ## # A tibble: 268 × 5
    ##    Package         LibPath                                Version Priority Built
    ##    <chr>           <chr>                                  <chr>   <chr>    <chr>
    ##  1 abind           C:/Users/jk845/AppData/Local/R/win-li… 1.4-5   <NA>     4.2.0
    ##  2 askpass         C:/Users/jk845/AppData/Local/R/win-li… 1.1     <NA>     4.2.1
    ##  3 assertthat      C:/Users/jk845/AppData/Local/R/win-li… 0.2.1   <NA>     4.2.1
    ##  4 backports       C:/Users/jk845/AppData/Local/R/win-li… 1.4.1   <NA>     4.2.0
    ##  5 bannerCommenter C:/Users/jk845/AppData/Local/R/win-li… 1.0.0   <NA>     4.2.1
    ##  6 base64enc       C:/Users/jk845/AppData/Local/R/win-li… 0.1-3   <NA>     4.2.0
    ##  7 bit             C:/Users/jk845/AppData/Local/R/win-li… 4.0.4   <NA>     4.2.1
    ##  8 bit64           C:/Users/jk845/AppData/Local/R/win-li… 4.0.5   <NA>     4.2.1
    ##  9 blob            C:/Users/jk845/AppData/Local/R/win-li… 1.2.3   <NA>     4.2.1
    ## 10 brew            C:/Users/jk845/AppData/Local/R/win-li… 1.0-7   <NA>     4.2.1
    ## # … with 258 more rows
