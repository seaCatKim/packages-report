#' ---
#' author: "Catherine kim"
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---

## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

apt_freqtable <- readr::read_csv("add-on-packages-freqtable.csv")

## if you use ggplot2, code like this will work:
library(ggplot2)
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col(fill = "turquoise") +
  theme_bw()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
#ggsave(here::here("figs", "built-barchart.png"))

## YES overwrite the file that is there now
## that's old output from me (Jenny)
