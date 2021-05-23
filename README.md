# Taylor series
`taylor-series` provides some Taylor (and MacLaurin) expansions for
arbitrary precision computations.

## Arbitrary precision
We use the native rational numbers in Common Lisp.
We provide the approximation together with the upper bound for
absolute error in the computations.

## Usage
### atan-maclaurin
Compute atan through MacLaurin series. Only for -1 < x < 1.
* `x` : the point at which to approximate atan(x).
* `eps`: the absolute maximum allowed error (eg. 1/1000 for 3 decimal places).

```common-lisp
(atan-maclaurin x eps)
;; => approx error-bound
```

* `approx`: the approximation for atan(x).
* `error-bound`: An upper bound for the absolute error.

## Performance
I think the rational number representation and computing the Taylor
series explicitely is not the most efficient way of doing things.
Clenshaw's formula should probably be used.

## Dependencies
* `taylor-series`: None.
* `taylor-series/test`:
  * [rove](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "taylor-series")
```

## References
1. https://mathworld.wolfram.com/MaclaurinSeries.html
2. https://en.wikipedia.org/wiki/Taylor%27s_theorem
