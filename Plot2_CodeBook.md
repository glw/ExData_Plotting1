---
title: "Plot 2"
author: "Garret Wais"
date: "02/08/2015"
output: html_document
---

# See Project-1.R for required packages and to run program.
# See DataDownload_andProcessing.Rmd for all R processing steps.

# This file produces Plot 2 ouput

### Plot 2 save as PNG


```r
png(filename="./final_plot_pngs/plot2", width=480,height=480, bg='transparent')

plot(housedata$Date, housedata$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')

dev.off()
```

```
## png 
##   2
```

### Plot 2 for HTML output

```r
plot(housedata$Date, housedata$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')
```

![plot of chunk plot 2 for html](figure/plot 2 for html-1.png) 
