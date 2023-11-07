Example problem with collectcode chunk option under knitr 1.45
================

``` r
library(Statamarkdown)
```

    ## Stata found at /Applications/Stata/StataMP.app/Contents/MacOS/StataMP

    ## The 'stata' engine is ready to use.

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

     [1] "collectcode-error.Rproj" "README.md"               "render.R"               
     [4] "test-knitr-1.44.html"    "test-knitr-1.44.md"      "test-knitr-1.45.html"   
     [7] "test-knitr-1.45.md"      "test-knitr-8737af7.html" "test-knitr-8737af7.md"  
    [10] "test-knitr-devel.html"   "test-knitr-devel.md"     "test.Rmd"               

A second, later code block:

``` stata
ls profile.do
regress price gpm
```

    ls: profile.do: No such file or directory

    no variables defined
    r(111);

    end of do-file
    r(111);

``` r
xfun::session_info('knitr')
```

    R version 4.3.2 (2023-10-31)
    Platform: aarch64-apple-darwin20 (64-bit)
    Running under: macOS Sonoma 14.1, RStudio 2023.9.1.494

    Locale: en_US.UTF-8 / en_US.UTF-8 / en_US.UTF-8 / C / en_US.UTF-8 / en_US.UTF-8

    Package version:
      evaluate_0.23   graphics_4.3.2  grDevices_4.3.2 highr_0.10     
      knitr_1.44.3    methods_4.3.2   stats_4.3.2     tools_4.3.2    
      utils_4.3.2     xfun_0.41       yaml_2.3.7     
