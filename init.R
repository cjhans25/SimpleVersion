---
title: "Heroku buildpack:R"
output: html_document
date: '2022-09-28'
---

# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("dplyr","data.table","tidyr", "rlist", "readxl")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))



