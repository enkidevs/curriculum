# Oh, that was the answer!
author: mihaiberq

levels:

  - basic
  - medium

type: tetris

category: must-know

---
## Content

Are the following functions' upper bound (Big-Oh) true?

---
## Game Content

false:true

```true
10^15 * n	=	O(n)
n^2 = O(n^3)
constant + n log n = O(n log n)
3^n = 2^O(n)
log log n = O(log n)
n^2 + 32n + 1602 = O(n^2)
n = O(n^1000)
n log n = O(n^2)
```

```false
n^2 =	O(n	log	n)
n^2 =	O(n)
n log n = O(n)
2 * 3 = O(n)
n! = O(n^3)
n^1000 = O(n)
(n log n) n^2 = O(n^2)
```
