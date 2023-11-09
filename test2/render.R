setwd(here::here("test2"))
rstudioapi::restartSession()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-commits-5.md", output_format = "github_document")

remotes::install_version('knitr', '1.44')
rstudioapi::restartSession()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-1-44.md", output_format = "github_document")

rmarkdown::render("test2.Rmd", output_file = "test2-knitr-tp-statamarkdown.md", output_format = "github_document")

writeprofiledo <- function() {
  txt <- "display \"Example with an existing profile.do\"\ndisplay 1 + 1"
  writeLines(txt, "profile.do")
}

remotes::install_version('knitr', '1.45')
writeprofiledo()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-1-45-tp-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.44')
writeprofiledo()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-1-44-tp-statamarkdown.md", output_format = "github_document")

remotes::install_version('knitr', '1.43')
writeprofiledo()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-1-43-tp-statamarkdown.md", output_format = "github_document")

remotes::install_github('yihui/knitr')
writeprofiledo()
rmarkdown::render("test2.Rmd", output_file = "test2-knitr-devel-tp-statamarkdown.md", output_format = "github_document")
