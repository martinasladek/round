
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `round`

<!-- badges: start -->
<!-- badges: end -->

`round` is a minimal package that tweaks the behaviour of
`base::round()` to be in line with rounding conventions. By default
`base::round()` rounds numbers ending with 5 to even. For example:

``` r
x <- seq(0.5, 4.5, 1)
x
base::round(x, digits = 0)
```

    #> [1] 0.5 1.5 2.5 3.5 4.5
    #> [1] 0 2 2 4 4

The documentation of `base::round()` explains this:

> Note that for rounding off a 5, the IEC 60559 standard (see also ‘IEEE
> 754’) is expected to be used, ‘go to the even digit’. Therefore
> round(0.5) is 0 and round(-1.5) is -2. However, this is dependent on
> OS services and on representation error (since e.g. 0.15 is not
> represented exactly, the rounding rule applies to the represented
> number and not to the printed number, and so round(0.15, 1) could be
> either 0.1 or 0.2).

In contrast, `round::round()` will always round numbers ending with 5
up:

``` r
x
round::round(x, digits = 0)
```

    #> [1] 0.5 1.5 2.5 3.5 4.5
    #> [1] 1 2 3 4 5

At this stage, `round::round()` cannot take negative integers as the
`digits` argument, unlike `base::round()` which uses negative integers
to round to the power of ten:

> Rounding to a negative number of digits means rounding to a power of
> ten, so for example round(x, digits = -2) rounds to the nearest
> hundred.

## Installation

Use at your own risk. This is a toy package I’ve put together to learn
more about building packages in R.

If you do want to use it, you can install the development version of
round from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("martinasladek/round")
```

## Example

``` r
library(round)

x <- seq(0.5, 4.5, 1)
x
round::round(x, digits = 0)
```

    #> [1] 0.5 1.5 2.5 3.5 4.5
    #> [1] 1 2 3 4 5

Note that the package will mask `base::round()` when loaded.
