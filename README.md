
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tesselle <img width=120px src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/tesselle/tesselle/workflows/R-CMD-check/badge.svg)](https://github.com/tesselle/tesselle/actions)
[![codecov](https://codecov.io/gh/tesselle/tesselle/branch/main/graph/badge.svg)](https://app.codecov.io/gh/tesselle/tesselle)
[![CodeFactor](https://www.codefactor.io/repository/github/tesselle/tesselle/badge/main)](https://www.codefactor.io/repository/github/tesselle/tesselle/overview/main)

<a href="https://tesselle.r-universe.dev" class="pkgdown-devel"><img
src="https://tesselle.r-universe.dev/badges/tesselle"
alt="r-universe" /></a>

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
<!-- badges: end -->

## Overview

The [tesselle](https://www.tesselle.org/) suite is a collection of
packages for research and teaching in archaeology. These packages focus
on quantitative analysis methods developed for archaeology. The tesselle
packages are designed to work seamlessly together and to complement
general-purpose and other specialized statistical packages. These
packages can be used to explore and analyze common data types in
archaeology: [count data](https://packages.tesselle.org/tabula/),
[compositional data](https://packages.tesselle.org/nexus/) and
[chronological data](https://packages.tesselle.org/kairos/).

The **tesselle** package is designed to make it easy to install and load
key packages from the tesselle suite in a single step.

## Installation

You can install the released version of **tesselle** from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("tesselle")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("tesselle/tesselle")
```

## Usage

`library(tesselle)` will load the core packages:

-   [**tabula**](https://packages.tesselle.org/tabula/): analysis,
    seriation and visualization of archaeological count data;
-   [**kairos**](https://packages.tesselle.org/kairos/): analysis of
    chronological patterns from archaeological count data;
-   [**khroma**](https://packages.tesselle.org/khroma/): colour schemes
    for scientific data visualization.

``` r
library(tesselle)
#> --- Attaching packages -------------------------------------------- tesselle ---
#> * tabula    1.6.1
#> * kairos    1.0.1
#> * khroma    1.8.0
```

## Contributing

Please note that the **tesselle** project is released with a
[Contributor Code of Conduct](https://www.tesselle.org/conduct.html). By
contributing to this project, you agree to abide by its terms.
