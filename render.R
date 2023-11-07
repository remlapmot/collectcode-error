# Successful render under knitr 1.44 
devtools::install_version("knitr", version = "1.44", repos = "https://cran.rstudio.com")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-1.44.html")
rmarkdown::render("test.Rmd", output_file = "test-knitr-1.44.md", output_format = "github_document")

# Error under knitr 1.45
devtools::install_version("knitr", version = "1.45", repos = "https://cran.rstudio.com")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-1.45.html")
rmarkdown::render("test.Rmd", output_file = "test-knitr-1.45.md", output_format = "github_document")

# Test under development version
remotes::install_github("yihui/knitr")
# rmarkdown::render("test.Rmd", output_file = "test-knitr-devel.html")
rmarkdown::render("test.Rmd", output_file = "test-knitr-devel.md", output_format = "github_document")

# Test under specific commits
# No error
remotes::install_github("yihui/knitr@8737af7")
rmarkdown::render("test.Rmd", output_file = "test-knitr-8737af7.md", output_format = "github_document")

# No error
remotes::install_github("yihui/knitr@b558369")
rmarkdown::render("test.Rmd", output_file = "test-knitr-b558369.md", output_format = "github_document")

# No error
remotes::install_github("yihui/knitr@ba8d9fb")
rmarkdown::render("test.Rmd", output_file = "test-knitr-ba8d9fb.md", output_format = "github_document")

# Error
remotes::install_github("yihui/knitr@8725408")
rmarkdown::render("test.Rmd", output_file = "test-knitr-8725408.md", output_format = "github_document")
