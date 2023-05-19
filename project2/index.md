---
title       : Project 2 
subtitle    : R Markdown Presentation & Plotly
author      : FP
job         : Coursera
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap, interactive]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
  
  


## Assignment - Plotly example using mtcars dataset

For this example we will try to show the previous analysis the relationship between MPG (Miles Per Gallon) and types of vehicle (automatic/ manual)

```r
library(plotly)
library(webshot)
data(mtcars)
mtcars$am <- as.factor(mtcars$am)
levels(mtcars$am) <- c("Automatic", "Manual")
```


```r
p1 <- plot_ly(
  data = mtcars,
  y = ~mpg,
  x = ~am,
  type = "box"
)
```

----

## Plot Result


```r
p1
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)

---

## Thank You

