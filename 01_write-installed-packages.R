
library(tidyverse)

pkgs <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
write_csv("installed-pkgs.csv")

pkgs
