library(dplyr)
library(lubridate)

# append DateTime column + remove Time and Date columns
power_data <- read.csv("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", 
                 stringsAsFactors = F, colClasses = c(rep("character", 2), rep("numeric", 7))) %>%
           mutate(SearchDate = fast_strptime(Date, "%d/%m/%Y")) %>%
           filter(SearchDate == ymd("2007-02-01") | SearchDate == ymd("2007-02-02")) %>%
           mutate(DateTime = fast_strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"), Time = NULL, Date = NULL, SearchDate = NULL)
