#This is a readme file to explain how the files work. 

The structure of the what was created follows closely with the reprodicibility principles 
students learned in the previous course work in "Getting and Cleaning Data". Although a bit
contrived because of my attempt to follow along as closely as possible to the instructions
(i.e. making a seperate file for each plot). 

To run the script go to **Project-1.R**, run it in R or RStudio. 

for example:
in RStudio

```r
setwd("/to/where/you/have/cloned/the/repo")
#then run
source("Project-1.R")
```

+ Project-1.R calls, **DataDownload_andProcessing.Rmd** - which is am R markdown file containing comments, 
and R code to download and process household_power_consumption.txt. 

+ It then calls files **plot1.Rmd**, **plot2.Rmd**, **plot3.Rmd**, **plot4.Rmd** - to follow as cloesly as possible the
instructions from README.md. I tried to avoid repeating the downloading and processing
steps. The plot R markdown files simply create the plots, and store them in **./final_plot_pngs.**

You may notice that additional graphs are stored in the figures folder (they can be ignored), 
for the moment that was the quickest way I knew to allow the graphs to be viewed in the CookBooks.md 
and CookBooks.html

