# Successful render under knitr 1.44 
devtools::install_version("knitr", version = "1.44", repos = "https://cran.rstudio.com")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-1.44.html")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-1.44.md", output_format = "github_document")

# Error under knitr 1.45
devtools::install_version("knitr", version = "1.45", repos = "https://cran.rstudio.com")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-1.45.html")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-1.45.md", output_format = "github_document")

# Test under development version
remotes::install_github("yihui/knitr")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-devel.html")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-devel.md", output_format = "github_document")

# Test under specific commits
# No error
remotes::install_github("yihui/knitr@8737af7")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-8737af7.md", output_format = "github_document")

# No error
remotes::install_github("yihui/knitr@b558369")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-b558369.md", output_format = "github_document")

# No error
remotes::install_github("yihui/knitr@ba8d9fb")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-ba8d9fb.md", output_format = "github_document")

# Error
remotes::install_github("yihui/knitr@8725408")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-8725408.md", output_format = "github_document")

# Error
remotes::install_github("yihui/knitr@c0dcdef")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-c0dcdef.md", output_format = "github_document")

# Error
remotes::install_github("yihui/knitr@4307aed")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-4307aed.md", output_format = "github_document")

# Error
remotes::install_github("yihui/knitr@09db6b2")
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-09db6b2.md", output_format = "github_document")

# Add commits onto ba8d9fb
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-1.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-2.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-3.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-4.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-5.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-commits-6.md", output_format = "github_document")

rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-tp-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.45')
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-45-tp-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.44')
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-44-tp-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.43')
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-43-tp-statamarkdown.md", output_format = "github_document")

remotes::install_github('yihui/knitr')
rstudioapi::restartSession()
rmarkdown::render("test.Rmd", output_file = "test-knitr-devel-tp-statamarkdown.md", output_format = "github_document")

# Check with Doug's Statamarkdown 0.9.0
install.packages('knitr')
remotes::install_github('Hemken/Statamarkdown')
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-45-doug-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.44')
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-44-doug-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.43')
rmarkdown::render("test.Rmd", output_file = "test-knitr-1-43-doug-statamarkdown.md", output_format = "github_document")
