######################################################
###R script to pull grizzly bear data from Dryad######
######################################################

#Using some code from Sam's lesson 3 tutorial 
#Trying to download data directly from Dryad

#load library/install rdryad
install.packages("rdryad")
#using groundhog package to load rdryad
#groundhog.library(rdryad,date = "2022-09-01")
#groundhog recommended that I switch my date to something before 2022-04-21
groundhog.library(rdryad,date = "2022-04-20") #this is better

# create directory for data
dir.create("Data/")
#sub directory in case I end up downloading more data from other places
dir.create("Data/dryad")

#downloading data I'm interested in from Ladle et al. (2018)
dryad_download(dois = "10.5061/dryad.nq68420")
#downloading data from dryad is not working- I think it's because the data is in a zip file
#and I don't know how to make R unzip the file

#for now lets just read in the data that I downloaded into the R project and note the date of download
#Downloaded September 9th 2022 from doi.10.5061/dryad.nq68420

getwd() #checking working directory
#making new sub directory where I'm going to put the data I downloaded from Dryad
#it will be in this sub directory for anybody I share this project with
dir.create("Data/downloaded")
grizzly_bear_movement <- read.csv("Data/downloaded/gbears_used_available_final.csv")
grizzly_bear_demographics <- read.csv("Data/downloaded/gbears_sex.csv")




