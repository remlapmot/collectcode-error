Example problem with collectcode chunk option under knitr 1.45
================

``` r
library(Statamarkdown)
```

A first code block:

``` stata
sysuse auto
generate gpm = 1/mpg
summarize price gpm
```

    (1978 automobile data)

        Variable |        Obs        Mean    Std. dev.       Min        Max
    -------------+---------------------------------------------------------
           price |         74    6165.257    2949.496       3291      15906
             gpm |         74    .0501928    .0127986   .0243902   .0833333

``` r
list.files()
```

    [1] "profile.do"                 "render.R"                  
    [3] "test2-knitr-commits-5.html" "test2-knitr-commits-5.md"  
    [5] "test2.Rmd"                 

``` r
cat(paste0(readLines("profile.do"), collapse="\n"))
```


    display "Example with an existing profile.do"
    display 1 + 1

A second, later code block:

``` stata
ls profile.do
regress price gpm
```

    -rw-r--r--  1 tom  staff  61  9 Nov 14:26 profile.do

    no variables defined
    r(111);

    end of do-file
    r(111);

``` r
list.files()
```

    [1] "profile.do"                 "render.R"                  
    [3] "test2-knitr-commits-5.html" "test2-knitr-commits-5.md"  
    [5] "test2.Rmd"                 

``` r
cat(paste0(readLines("profile.do"), collapse="\n"))
```


    display "Example with an existing profile.do"
    display 1 + 1

``` r
xfun::session_info('knitr')
```

    R version 4.3.2 (2023-10-31)
    Platform: aarch64-apple-darwin20 (64-bit)
    Running under: macOS Sonoma 14.1.1, RStudio 2023.9.1.494

    Locale: en_GB.UTF-8 / en_GB.UTF-8 / en_GB.UTF-8 / C / en_GB.UTF-8 / en_GB.UTF-8

    Package version:
      evaluate_0.23   graphics_4.3.2  grDevices_4.3.2 highr_0.10     
      knitr_1.44.3    methods_4.3.2   stats_4.3.2     tools_4.3.2    
      utils_4.3.2     xfun_0.41       yaml_2.3.7     
