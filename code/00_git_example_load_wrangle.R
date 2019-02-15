#Alejandro Toyofusa Komai, Ph.D.
#February 2019
#Test for git and github.com

#libraries---------------------------------------------------------------------
library(tidyverse)
library(dplyr)
library(readxl)
library(readr)
#load--------------------------------------------------------------------------
raw <- read_excel(".\\data\\data_example.xlsx")

#wrangle-----------------------------------------------------------------------
data <- raw %>%
  mutate(length = x,
         height = y,
         width = z) %>%
  select(length,
         height,
         width,
         volume)

#save wrangle------------------------------------------------------------------
write_rds(data, ".\\data\\wrangle_example.rds")