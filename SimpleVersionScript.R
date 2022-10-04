library(dplyr)
library(data.table)
library(rlist)
library(readxl)
library(tidyr)

rawdata <- fread("SimpleCSV.csv") %>%
  mutate(Date = as.Date(Date, format = '%m/%d/%Y'))

rawdata_arranged <- rawdata %>%
  group_by(Campaign) %>%
  summarize(Conversions = sum(Conversions))
