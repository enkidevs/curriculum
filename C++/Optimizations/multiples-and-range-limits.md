# Multiples and range limits
author: luke

levels:

  - advanced

type: normal

category: pattern

links:

  - '[Dr Dobbs Programming Guidelines for Vectorizing C/C++ Compilers](http://www.drdobbs.com/programming-guidelines-for-vectorizing-c/184401611)'

---
## Content

The compiler can optimize loop bodies by using vector instructions in parallel,
allowing certain values to be computed simultaneously. Vector instructions can
only be used in certain circumstances as they require code to be aligned to a
*word boundary*.

Most vector instruction words are a multiple of 4 and so, to utilize this
feature, any loops must run to a range limit that is also a multiple a 4. The
example below shows how you can achieve this:

```
for (int i = 0; i < (n & ~3); i++) {
  // Loop body that can be vectorized
}
```

This works by performing a bitwise *AND* with the limit variable, `n`, and the
binary value for 4 (3 in binary is `011` and so `100` is it's negation).

---
## Practice

Which expression will truncate a value to a multiple of 8?
???

* `(n & ~7)`
* `(n & ~8)`
* `(n & 8)`

---
## Revision

What condition must hold for vector instructions to be used in a loop?
???

* The loop runs `n` times, where `n` is a multiple of the vector word length
* The loop must contain an even number of vectorizable instructions
* The iterator must be incremented by a multiple of the vector word length
