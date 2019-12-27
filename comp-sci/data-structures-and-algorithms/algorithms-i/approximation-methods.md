---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - workout

links:

  - '[Big O vs Big Theta](http://stackoverflow.com/questions/471199/what-is-the-difference-between-%CE%98n-and-on){website}'

parent: approximating-memory-and-time-required-by-data-types

---

# Approximation methods

---
## Content

In the last insight, we briefly introduced the `Big-O` notation. However, there are some other approximations used besides it: `Little-o`, `Big-Theta(Θ)` and `Big-Omega(Ω)`.

Before any of that, let's get back to the Big-O notation for a moment. We defined it as an upper bound function, in order to compute resources needed for the worst-case scenario of a data type or algorithm.

Formally, a function `g` is the *Big-O* of a function `f` if there is a constant `c` and a starting index `n'` for which `f(n)<=c⋅g(n)`, and `n>=n'`[1]. Informally, **f** is bounded **above** by a constant multiple of **g**:

![on](https://img.enkipro.com/62dc8475d2de05b5b02172b3138f0e1c.png)

It is easy to find a function which *grows much faster* than another, but that is not the point. In order for *Big-O* to be relevant, the function's graph must be above the one's we are looking to bound, but, at the same time, it must be as close as possible.

`Big-Omega`, or `Big-Ω`, represents the **lower bound** of a function. Using the same notations as before, we can say that *g(n) is Ω(f(n))*, or that `f(n)>=c⋅g(n)`, for any `n>=n'`:

![omega](https://img.enkipro.com/8440baaca86636869da3e673115b3dad.png)

`Big-Theta`, or `Big-Θ`,  describes the **exact bound** of the function. We can express *g(n) is Θ(f(n))* as `g(n) is Ω(f(n))` and `g(n) is O(f(n))`[2], for every `n>=n'`. In other words, the *Big-Theta function* times `constant1` is inferior to *f(n)* and the same *Big-Theta function* times `constant2` is superior to *f(n)*:

![theta](https://img.enkipro.com/61248abf185bb12fc083896376677856.png)

The last function, `little-o`, satisfies `f(n)<c⋅g(n)`, for every `n>=n'`. In other words, `g(n) is o(f(n))` if `g(n) is O(f(n))` **and not** `Θ(f(n))`. We could say that *Big-O* is to *little-o* what **<=** is to **<**.

---
## Practice

Which bound is defined as:
```text
g(n) is O(f(n))
and
g(n) is not Θ(f(n))
```
???

* Little-o
* Big-O
* Big-Theta
* Big-Omega

---
## Revision

If a function is both Big-O and Big-Omega, it is called

???

* Big-Theta
* Little-O
* Middle bound
* Big-O

---
## Footnotes
[1:Big O]
Consider this equation:
```text
nˆ3 >= 3nˆ2 + 10n,
true for any n >= 5
```
In this case:
```text
f(n) = 3nˆ2 + 10n
g(n) = nˆ3
c = 1
n' = 5
```

[2:Big Theta]
Here, the following axiom is used:
```text
if a>=b and b>=a, then a=b.
```

