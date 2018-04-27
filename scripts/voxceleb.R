#Set working directory
setwd("~/Documents/Github/Audio_Age_Classifier")

# Clear workspace
rm(list=ls())

#Load packages
library(rvest)

#Tests if data is downloaded and download if it doesn't exist
if(!file.exists("./data/voxceleb.zip")){download.file(url = "http://www.robots.ox.ac.uk/~vgg/data/voxceleb/voxceleb1.zip",
                                                      destfile = "./data/voxceleb.zip")}

#Unzips the data
unzip("./data/voxceleb.zip", exdir = "./data")


#Creates list of file
dirs = list.dirs('./data/voxceleb1_txt')
dirs = dirs[-1]
files = paste(dir,list.files(dir))
for(dir in dirs[2:length(dirs)]){
  files = c(files, paste(dir,list.files(dir)))
}

###USE REGEX TO EXTRACT CELEBRITY NAME AND YOUTUBE ID


###USE RVEST TO EXTRACT THE CELEBRITY'S BIRTH DATE FROM WIKIPEDIA

#Create data frame of survivor seasons
wiki = read_html("https://en.wikipedia.org/wiki/Survivor_(U.S._TV_series)")

#USE REVEST TO EXTRACT PUBLICATION DATE FOR VIDEO FROM YOUTUBE

#SUBTRACT DIFFERENCE BETWEEN AGE AND PUBLICATION DATE FOR AGE ESTIMATE FOR CELEBRITY IN VIDEO