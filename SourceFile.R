# Source file for Assignment 1
# Authors: Katie, Meerim, Sarah

#get working directory
getwd

#list all files in working directory
list.files

#set working directory to "/"
setwd("/")
getwd ()

# load packages
library(dplyr) # for dataset manipulation
library(rio) # for R Input/Output from online data source
library(ggplot2) # for graphs
library(Hmisc) # some useful functions
library(utils) # for downloading stuff from the internet
library(pastecs) # for summary statistics
library(ggplot2) # for graphs
library(reshape2) # for data formatting

#load data set library
library(MASS)

#load data frame
data(mtcars)
