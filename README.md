
# mapswrData <img src="man/figures/logo.png" align="right" alt="" width="120" />


<!-- badges: start -->
<!-- badges: end -->

The goal of `mapswrData` is to provide engaging spatial datasets to aid map making and illustrate key concepts.  Most, but not all, datasets support the website `mapswR`.  

## Installation

You can install the development version of mapswrData like so:

``` 
remotes::install_github("RobWiederstein/mapswrData")

# or

devtools::install_github("RobWiederstein/mapswrData")
```

## About

While not originally intended, many of the datasets originated from U.S. agencies like the U.S. Census Bureau and the Internal Revenue Service due to previous familiarity.  Some of the datasets were included because they have become iconic in the field of visualization like `minard_troops` or `snow`.  Others were included because of their historical significance like Amelia Earhart's attempted circumnavigation of the globe in `earhart`.  And where possible, the speediest incorporation was used meaning that a number of datasets are simply ported from other packages, but only where it was permitted by license.  All of the datasets were chosen with a keen eye on file size. The temptation was to stuff the package with large datasets for glorious maps, yet slow load times bog down the most committed students. (I use "student" here not in the context of school enrollment, but as a lifelong learner committed to insight).  Users might follow the source information for more complete datasets. 

## Acknowledgements

Two sources are deserving of special acknowledgement [spData](https://jakubnowosad.com/spData/) and [Rdatasets](https://vincentarelbundock.github.io/Rdatasets). I'm indebted to the authors of these packages for their work.

## Models

- [spData](https://github.com/Nowosad/spData)
- [tsibbleData](https://github.com/tidyverts/tsibbledata)

