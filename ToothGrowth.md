ToothGrowth Data Explorer!
========================================================
author: SP! 
date: February 20, 2015

Overview
========================================================

__ToothGrowth__ Data Explorer is an interactive application 
that allows data exploration, analysis, modeling of ToothGrowth
Data set available on Cran-R site.

The product allows user to:

- Interactively Browse ToothGrowth dataset with search and 
  pagination options on ToothGrowth
- Analyze and visualize impact of dosage levels and supplements 
  on tooth growth
- Visualize a simple linear regression model for prediction.

Dataset 
========================================================



_Structure_

```
[1] "len"  "supp" "dose"
```

_Summary_

```
      len        supp         dose      
 Min.   : 4.20   OJ:30   Min.   :0.500  
 1st Qu.:13.07   VC:30   1st Qu.:0.500  
 Median :19.25           Median :1.000  
 Mean   :18.81           Mean   :1.167  
 3rd Qu.:25.27           3rd Qu.:2.000  
 Max.   :33.90           Max.   :2.000  
```

Plotting ToothGrowth
========================================================

![plot of chunk unnamed-chunk-4](ToothGrowth-figure/unnamed-chunk-4-1.png) 


* A t-Test on samples revealed with a 95% confidence that average toothgrowth was found higher than VC  
* Higher dossage linearly influenced the tooth growth as well.

Modeling a linear Regression
========================================================

![plot of chunk unnamed-chunk-5](ToothGrowth-figure/unnamed-chunk-5-1.png) 
***


```

Call:
lm(formula = len ~ ., data = ToothGrowth)

Coefficients:
(Intercept)       suppVC         dose  
      9.272       -3.700        9.764  
```



Model recommends feeding a good dosage of orange juice to the pigs!
