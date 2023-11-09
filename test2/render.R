setwd(here::here("test2"))
rstudioapi::restartSession()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-commits-5.md", output_format = "github_document")
