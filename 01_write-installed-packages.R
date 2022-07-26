#' ---
#' author: "Catherine kim"
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---

# an insightful comment

library(tidyverse)

pkgs <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
write_csv("installed-pkgs.csv")

pkgs
