######################################################
###R script to pull grizzly bear data from Dryad######
######################################################

#Using some code from Sam's lesson 3 tutorial 
#Trying to download data directly from Dryad

#load library/install rdryad
#install.packages("rdryad")
#install.packages("groundhog")
library(groundhog)
install.packages("filestrings")

#using groundhog package to load rdryad
#groundhog.library(rdryad,date = "2022-09-01")
#groundhog recommended that I switch my date to something before 2022-04-21
groundhog.library(rdryad,date = "2022-04-20")
#load filestrings 
groundhog.library(filesstrings,date = "2022-04-20")


# create directory for data
dir.create("Data/")
dir.create("Data/dryad")

#downloading data I'm interested in from Ladle et al. (2018)
dryad_download(dois = "10.5061/dryad.nq68420")

##you now need to go into Library > Caches > R > rdryad > Data and R code to manually unzip the file

#moving files into R project
move_files(c("~/Library/Caches/R/rdryad/Data_and_Rcode/gbears_sex.csv",
             "~/Library/Caches/R/rdryad/Data_and_Rcode/gbears_used_available_final.csv"),
           "C:/Users/oliviarahn/Desktop/grizzly_bear_movement_project_LDP/Data/dryad/", 
           overwrite = FALSE)







