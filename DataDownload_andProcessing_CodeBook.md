---
title: "DataDownload"
author: "Garret Wais"
date: "02/08/2015"
output: html_document
---

# See Project-1.R for required packages and to run program.
# This file, DataDownload_andProcessing.Rmd, shows all R processing steps.

### R session Used:

```r
sessionInfo()
```

```
## R version 3.1.2 (2014-10-31)
## Platform: x86_64-pc-linux-gnu (64-bit)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] markdown_0.7.4 knitr_1.9     
## 
## loaded via a namespace (and not attached):
## [1] evaluate_0.5.5 formatR_1.0    stringr_0.6.2  tools_3.1.2   
## [5] yaml_2.1.13
```


### Download file

```r
fileurl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
```

### Store file in temp directory

```r
tempdir = tempdir()
```

### Create temporary zip file

```r
temp <- tempfile(tmpdir = tempdir, fileext = ".zip")
```

### Download file into temp directory and zip

```r
download.file(fileurl, destfile = temp, method = "wget")
```

### List file

```r
file <- unzip(temp, list=TRUE)
file
```

```
##                              Name    Length                Date
## 1 household_power_consumption.txt 132960755 2012-10-12 13:38:00
```

### Create 'data' folder in current working director

```r
if (!file.exists("data")){dir.create("data")}
```

### Create a folder to hold Final PNG files

```r
if (!file.exists("final_plot_pngs")){dir.create("final_plot_pngs")}
```

### Unzip and store data

```r
unzip(temp, exdir = "./data", overwrite = TRUE)
```

### Unlink temprorary file and directory

```r
unlink(temp)
unlink(tempdir)
```

### Assign variable name 'file' to data file

```r
datafile <- c("./data/household_power_consumption.txt")

#decided not to use the following, but maybe helpful for future use.
#data_subset <- read.csv.sql(file, header = TRUE, sep=";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')" )
```

### Load data as data.frame

```r
housedata <- read.table(datafile, header = TRUE, sep = ";", na.strings = "?")
```

### Omit NAs

```r
housedata <-na.omit(housedata)
```

### Subset by specified time period

```r
housedata <- housedata[housedata$Date %in% c("1/2/2007", "2/2/2007"),]
```

### Convert 'Date' field to date format

```r
housedata$Date <- strptime(paste(housedata$Date,housedata$Time), "%d/%m/%Y %H:%M:%S")
```
### Data has been processed. Please see; plot1.Rmd, plot2.Rmd, plot3.Rmd, and plot4.Rmd for their respective code. Thank you.
