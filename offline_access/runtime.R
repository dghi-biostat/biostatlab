files <- list.files(pattern = "*.Rmd")
files
for (f in files) rmarkdown::render(f)