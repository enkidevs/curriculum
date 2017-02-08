# Approximation methods
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

---
## Content

In the last insight, we briefly introduced the `Big-O` notation. Besides it, there are some other approximations used: `Little-o`, `Big-Theta(Θ)` and `Big-Omega(Ω)`.

Before any of that, let's get back to the Big-O notation for a moment. We defined it as an upper bound function, in order to compute resources used in the worst-case scenario of a data type or algorithm.


*Formally*, a function `F` is the *Big-O* of a function `f`[1] if there is a constant `c` and a starting index `n'` for which `F(n) <= c*f(n)`, and `n>=n'`. *Informally*, `f(n)` is the upper bound of `F(n)` after a certain index, `n'`.

It is easy to find a function whose graph *grows faster* than another's, but that is not the point. In order for *Big-O* to be relevant, it must represent *the slowest-growing function, but faster than the one we are looking to bound*. 

The other notations are quite similar to *Big-O*:
- `Big-Omega`, or `Big-Ω`, represents the **lower bound** of a function. Using the same notations as before, we can say that *F(n) is Ω(f(n))*, or that `F(n)>=c*f(n)`, for any `n>=n'`.

- `Big-Theta`, or `Big-Θ`,  describes the **exact bound** of the function. We can express *F(n) is Θ(f(n))* as `F(n) is Ω(f(n))` **and** `F(n) is O(f(n))`[2], for every `n>=n'`.

- `Little-o` is the function F that satisfies `F(n)<c*f(n)`, for every `n>=n'`. In other words, `F(n) is o(f(n))` if `F(n) is O(f(n))` **and not** `Θ(f(n))`.


---
## Practice

Which bound is defined as:
```text
F(n) is O(f(n))
and 
F(n) is not Θ(f(n))
```
???
*Little-o
*Big-O
*Big-Theta
*Big-Omega

---
## Revision

If a function is both Big-O and Big-Omega, it is called

???
*Big-Theta
*Little-O
*Middle bound
*Big-O

---
## Footnotes

[1:Big O]
*F(n)* is *O( f(n) )*
[2:Big Theta]
Here, the following axiom is used:
```
if a>=b and b>=a, then a=b.
```