#library
library(readr)
library(tidyverse)

JapanesePopulation <- read_csv("data/FEH_00200502_180603185418.csv", skip = 11)
View(JapanesePopulation)

JapanesePopulation <-  JapanesePopulation %>% select(1:4, 6:47)

JapanesePopulation <- 
  JapanesePopulation %>% 
  gather(key = year, 
         value = Population, 
         -"A Population and Households Code", -"A Population and Households", -"AREA Code", -"AREA")

JapanesePopulation %>% saveRDS("JapanesePopulation.rds")
