# Taylor series
`taylor-series` provides some Taylor (and MacLaurin) expansions for
arbitrary precision computations.

## Arbitrary precision
We use the native rational numbers in Common Lisp.
We provide the approximation together with the upper bound for
absolute error in the computations.

## Usage

## Performance
I think the rational number representation and computing the Taylor
series explicitely is not the most efficient way of doing things.
Clenshaw's formula should probably be used.

## Dependencies

## Test

## References
1. https://mathworld.wolfram.com/MaclaurinSeries.html
2. https://en.wikipedia.org/wiki/Taylor%27s_theorem
