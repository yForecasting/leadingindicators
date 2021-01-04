mf <- function(name = "") {
  mf_name <<- name
  reticulate::source_python('~/Documents/Research/4_Git_yForecasting/leadingindicators/py_code_maker.py')
  file.edit(paste0("./man/", mf_name, ".Rd"))
  file.edit(paste0("./R/", mf_name, ".R"))
}

