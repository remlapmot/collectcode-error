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

     [1] "collectcode-error.Rproj"                "profile.do"                            
     [3] "README.md"                              "render.R"                              
     [5] "test-knitr-09db6b2.html"                "test-knitr-09db6b2.md"                 
     [7] "test-knitr-1-43-tp-statamarkdown.html"  "test-knitr-1-43-tp-statamarkdown.md"   
     [9] "test-knitr-1-44-tp-statamarkdown.html"  "test-knitr-1-44-tp-statamarkdown.md"   
    [11] "test-knitr-1-45-tp-statamarkdown.html"  "test-knitr-1-45-tp-statamarkdown.md"   
    [13] "test-knitr-1.44.html"                   "test-knitr-1.44.md"                    
    [15] "test-knitr-1.45.html"                   "test-knitr-1.45.md"                    
    [17] "test-knitr-4307aed.html"                "test-knitr-4307aed.md"                 
    [19] "test-knitr-8725408.html"                "test-knitr-8725408.md"                 
    [21] "test-knitr-8737af7.html"                "test-knitr-8737af7.md"                 
    [23] "test-knitr-b558369.html"                "test-knitr-b558369.md"                 
    [25] "test-knitr-ba8d9fb.html"                "test-knitr-ba8d9fb.md"                 
    [27] "test-knitr-c0dcdef.html"                "test-knitr-c0dcdef.md"                 
    [29] "test-knitr-commits-1.html"              "test-knitr-commits-1.md"               
    [31] "test-knitr-commits-2.html"              "test-knitr-commits-2.md"               
    [33] "test-knitr-commits-3.html"              "test-knitr-commits-3.md"               
    [35] "test-knitr-commits-4.html"              "test-knitr-commits-4.md"               
    [37] "test-knitr-commits-5.html"              "test-knitr-commits-5.md"               
    [39] "test-knitr-commits-6.html"              "test-knitr-commits-6.md"               
    [41] "test-knitr-devel-tp-statamarkdown.html" "test-knitr-devel-tp-statamarkdown.md"  
    [43] "test-knitr-devel.html"                  "test-knitr-devel.md"                   
    [45] "test-knitr-tp-statamarkdown.html"       "test-knitr-tp-statamarkdown.md"        
    [47] "test.Rmd"                               "test2"                                 

A second, later code block:

``` stata
ls profile.do
regress price gpm
```

    -rw-r--r--  1 tom  staff  53 Nov 12 06:44 profile.do

          Source |       SS           df       MS      Number of obs   =        74
    -------------+----------------------------------   F(1, 72)        =     35.95
           Model |   211486574         1   211486574   Prob > F        =    0.0000
        Residual |   423578822        72  5883039.19   R-squared       =    0.3330
    -------------+----------------------------------   Adj R-squared   =    0.3238
           Total |   635065396        73  8699525.97   Root MSE        =    2425.5

    ------------------------------------------------------------------------------
           price | Coefficient  Std. err.      t    P>|t|     [95% conf. interval]
    -------------+----------------------------------------------------------------
             gpm |     132990   22180.86     6.00   0.000     88773.24    177206.7
           _cons |  -509.8827   1148.469    -0.44   0.658    -2799.314    1779.548
    ------------------------------------------------------------------------------

``` r
xfun::session_info('knitr')
```

    R version 4.3.2 (2023-10-31)
    Platform: aarch64-apple-darwin20 (64-bit)
    Running under: macOS Sonoma 14.1.1, RStudio 2023.9.1.494

    Locale: en_US.UTF-8 / en_US.UTF-8 / en_US.UTF-8 / C / en_US.UTF-8 / en_US.UTF-8

    Package version:
      evaluate_0.23   graphics_4.3.2  grDevices_4.3.2 highr_0.10      knitr_1.45     
      methods_4.3.2   stats_4.3.2     tools_4.3.2     utils_4.3.2     xfun_0.41      
      yaml_2.3.7     

``` r
packageVersion('Statamarkdown')
```

    [1] '0.9.0'