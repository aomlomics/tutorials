###Data Manipulation Example

#load libraries
library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(vegan)


# Read the CSV file
#Named the file "mydata"
mydata <- read.csv("fish21_no_CTD_040624.csv") #File Name in quotations 

#Read in xslv file
#Named the file "fish2019_counts"
fish2019_counts <- read_excel("rfvmad_sm_sta_eDNA_2019_fishcounts.xlsx")  #File Name in quotations

#Get a list of column names
print(colnames(fish2019_counts))

# Subset the dataset to contain only the relevant columns by name
mydata <- fish2019_counts[c("station_key","region", "temp", "sta_lat", "sta_lon")]

#Subset data to contain columns selected by number 

fish2019_counts_select<- subset(fish2019_counts, select = c(52:644))

# Create a new column 'temp_F' with temperatures converted to Fahrenheit
mydata$temp_F <- mydata$temp * 9/5 + 32

#Remove rows with no temps
mydata <- mydata[!is.na(mydata$temp), ]

#check which package a function belongs to
?read_excel

#save a file to current working directory
write.csv(mydata, "NameForNewFile.csv", row.names = FALSE)

