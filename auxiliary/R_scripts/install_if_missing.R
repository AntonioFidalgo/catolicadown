required_packages <- c("rmarkdown", "bookdown", "knitr",
                       "kableExtra", "dplyr", "tibble",
                       "readxl")

for (package in required_packages) {
  print(paste0("checking for install of ", package))
  if (!requireNamespace(package)) install.packages(package, repos = "http://cran.rstudio.com")
}


lapply(required_packages, library, character.only = TRUE) |>
  suppressMessages()