#This R file uses Knitr to call R files needed to reproduce Coursera's - Exploratory Data Analysis, Project 1
#Please **set working directory** below to correctly run the script.
#Please see "plot1.Rmd", "plot2.Rmd", "plot3.Rmd", and "plot4.Rmd" for additional markdown and the R steps needed to complete the assignment.

# helper function to install packages if not already installed
usePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

usePackage("knitr")
usePackage("markdown")

#***YOU MUST SET WORKING DIRECTORY FOR SCRIPT TO WORK***
setwd("/home/user/projects/classes/coursera/exploratory_data_analysis/ExData_Plotting1")

#check to make sure plot1.Rmd exsists
#Knitr runs script and outputs new CodeBooks
stopifnot(file.exists('DataDownload_andProcessing.Rmd'))
knit(input="DataDownload_andProcessing.Rmd", output="DataDownload_andProcessing_CodeBook.md")
markdownToHTML("DataDownload_andProcessing_CodeBook.md", "DataDownload_andProcessing_CodeBook.html", options=c("use_xhml"))

stopifnot(file.exists("plot1.Rmd"))
knit(input="plot1.Rmd", output="Plot1_CodeBook.md")
markdownToHTML('Plot1_CodeBook.md', 'Plot1_CodeBook.html', options=c("use_xhml"))

stopifnot(file.exists("plot2.Rmd"))
knit(input="plot2.Rmd", output="Plot2_CodeBook.md")
markdownToHTML('Plot2_CodeBook.md', 'Plot2_CodeBook.html', options=c("use_xhml"))

stopifnot(file.exists("plot3.Rmd"))
knit(input="plot3.Rmd", output="Plot3_CodeBook.md")
markdownToHTML('Plot3_CodeBook.md', 'Plot3_CodeBook.html', options=c("use_xhml"))

stopifnot(file.exists("plot4.Rmd"))
knit(input="plot4.Rmd", output="Plot4_CodeBook.md")
markdownToHTML('Plot4_CodeBook.md', 'Plot4_CodeBook.html', options=c("use_xhml"))