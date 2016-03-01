#get working directory
getwd

#list all files in working directory
list.files

#set working directory to "/"
setwd("/")
getwd ()

install.packages('dplyr')
library(dplyr)

#install for R Input/Output from online data source
install.packages('rio')
library(rio)

install.packages('ggplot2')
library(ggplot2)

library(Hmisc) # some useful functions
library(utils) # for downloading stuff from the internet
library(pastecs) # for summary statistics
library(ggplot2) # for graphs
library(reshape2) # for data formatting

#load data set library
library(MASS)