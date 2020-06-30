---
author: mihaiberq
type: tetris
category: must-know
parent: primality-test
---

# Big-Oh, that was the answer!


---

## Content

Are the following functions' upper bound (Big-Oh) true?


---

## Game Content

false:true

```true
10^15 * n = O(n)
%exp
`10^15` is a constant. There is `10^15 + 1` which is greater than that and can act as the constant after which `O(n)` is also greater.
%
n^2 = O(n^3)
%exp
`n^3` is bigger than `n^2`.
%
a + n log n = O(n log n)
%exp
There is another constant `b` for which `b n log n` is greater than `a + n log n`.
%
3^n = 2^O(n)
%exp
`3^n = 2^(log 3^n) = 2^(n*log(3)) = 2^O(n)`.
%
log log n = O(log n)
%exp
`log n` is bigger than `log log n`, so the Big-O bounds the initial function.
%
n^2 + 32n + 1602 = O(n^2)
%exp
This is true after a certain constant value.
%
n = O(n^1000)
%exp
`n^10000` is definitely greater than `n` for positive integers.
%
n log n = O(n^2)
%exp
`n^2` is greater than `n log n`.
%
2 * 3 = O(n)
%exp
The linear function `n` is greater than the constant `6`.
%
```

```false
n^2 = O(n log n)
%exp
`n^2` is greater than `n log n`, so the Big-O cannot be its upper bound.
%
n^2 = O(n)
%exp
`n^2 > c*n` for any constant `c`.
%
n log n = O(n)
%exp
`log n` is a function of n, so it cannot be bounded by a constant.
%
3^n = O(n^3)
%exp
The exponential function is growing faster than the cubic function.
%
n^1000 = O(n)
%exp
`n^1000` is bigger than `c n`, for any constant `c`.
%
(n log n) n^2 = O(n^2 log n)
%exp
The function is equal to `n^3 log n`, which is bigger than `n^2 log n`.
%
```
