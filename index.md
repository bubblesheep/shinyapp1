---
title       : Mtcars Dataset Lookup and Visualization
subtitle    : HTML slides from R Markdown
author      : Bubblesheep
job         : Statistician
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Introduction


> 1. This tool can help you get a better understanding of the "mtcars" dataset.

> 2. You can use the left side bar to choose the type of your car and a selected car list will be shown in the main window.

> 3. In the botton part of the side bar, you can choose two variables of your interest, get their mean values and check their relationship plot.

---

## Car Lookup Tool

Here you can see the variables of the 'mtcars'

```r
data(mtcars)
names(mtcars)
```

```
##  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
## [11] "carb"
```

You can use the following popular attributes to make your own selection

```r
summary(mtcars[,c(1,2,4,6,9)])
```

```
##       mpg             cyl              hp              wt       
##  Min.   :10.40   Min.   :4.000   Min.   : 52.0   Min.   :1.513  
##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.: 96.5   1st Qu.:2.581  
##  Median :19.20   Median :6.000   Median :123.0   Median :3.325  
##  Mean   :20.09   Mean   :6.188   Mean   :146.7   Mean   :3.217  
##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:180.0   3rd Qu.:3.610  
##  Max.   :33.90   Max.   :8.000   Max.   :335.0   Max.   :5.424  
##        am        
##  Min.   :0.0000  
##  1st Qu.:0.0000  
##  Median :0.0000  
##  Mean   :0.4062  
##  3rd Qu.:1.0000  
##  Max.   :1.0000
```

---
## Data insight part 1

Here I provide just three simple variables to get a further insight

We have a mean function output like:

```r
mean(mtcars[,"mpg"])
```

```
## [1] 20.09062
```



---

## Data insight part 2

And we also enable the user to check the relationship plot


```r
plot(mpg~hp,data=mtcars)
```

![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png) 

Thank you for watching this!
