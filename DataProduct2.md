DataProduct2
========================================================
author:CU2RealMadrid 
date: Nov 13, 2014

Application Theme
========================================================

The application utilizes machine learning principles to 
guide users to vehicle preferences.  

- mtcars data was analyzed via random forest
- UI candy was limited to 4 slider inpute to reduce ui.r coding
- Random Forest object was cached to save server load

MTCar's Features
========================================================


```r
head(mtcars)
```

```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

Importance of Variables 
========================================================

![plot of chunk unnamed-chunk-2](DataProduct2-figure/unnamed-chunk-2.png) 

Having not set the random seed the importance of variables shifted from initial setup.  Could be addressed in Re-engineering effort.

Exponential Growth
========================================================
- since the deployment of this app, traffic to CU2RealMadrid has exploded
- Additional UI candy in the form of more sliders seen as true upgrade potential
- More feature control will increase user traffic
- Re-engineering requirements projected at 100 hours ~$15,000
- We are really excited about this project and eager to get started
