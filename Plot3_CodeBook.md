---
title: "Plot3"
author: "Garret Wais"
date: "02/08/2015"
output: html_document
---

# See Project-1.R for required packages and to run program.
# See DataDownload_andProcessing.Rmd for all R processing steps.

# This file produces Plot 3 ouput

### Plot 3 save as PNG


```r
png(filename="./final_plot_pngs/plot3.png", width=480,height=480, bg='transparent')

plot(housedata$Date, housedata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab='')
lines(housedata$Date, housedata$Sub_metering_2, type="l", col="red")
lines(housedata$Date, housedata$Sub_metering_3, type="l", col="blue")
legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1,1), col=c('black', 'red', 'blue'))

dev.off()
```

```
## png 
##   2
```

### Plot 3 for HTML output

```r
plot(housedata$Date, housedata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab='')
lines(housedata$Date, housedata$Sub_metering_2, type="l", col="red")
lines(housedata$Date, housedata$Sub_metering_3, type="l", col="blue")
legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1,1), col=c('black', 'red', 'blue'))
```

![plot of chunk plot 3 for html](figure/plot 3 for html-1.png) 
