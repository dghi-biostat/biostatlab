files <- list.files(pattern = "*.Rmd")
files
for (f in files){
  filename <- paste('\'', f, '\'', sep = '')
  shell(paste("edit_rmd.bat", filename, "\'images/\'", "\'../images/\'"), 
        intern = FALSE)
  shell(paste("edit_rmd.bat", filename, "\'files/\'", "\'../files/\'"), 
        intern = FALSE)
  shell(paste("edit_rmd.bat", 
              filename, 
              "\'assignments/\'", 
              "\'https://github.com/dghi-biostat/biostatlab/blob/main/assignments/\'"),
        intern = FALSE)
  shell(paste("edit_rmd.bat",
               filename,
               "\'<aside>\'",
               "\'aside: \'"),
         intern = FALSE)

  
 # shell(paste("edit_rmd.bat",
 #             filename,
 #             "\'output: distill::distill_artcile\'",
 #             "\'output: word_document\nalways_allow_html: true\'"),
 #       intern = TRUE)
  rmarkdown::render(f, "word_document", params = "ask")
                    #output_options = list(always_allow_html = "true"))
}