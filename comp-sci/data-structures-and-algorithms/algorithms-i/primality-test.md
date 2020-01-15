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

parent: sieve-of-eratosthenes

---

# Primality Test

---
## Content

**Primality test** is an algorithm for checking if a number is prime.

Probably the simplest way to test if a number is prime is to divide it by every natural number smaller than it. If there is a division which leaves no remainder, then the number is *composite*. Otherwise, the number is *prime*.

Some improvements can be made to the algorithm: there is no point in verifying numbers greater than **√n**. This is the case because after that value, divisors will just swap positions:
```
// take 36 for example
36 = 2×18 = 4×9 = 6×6
   = 18×2 = 9×4
```
In other words, if **n** doesn't have any divisor smaller than √n, there isn't any *natural divisor* greater than √n.

To further reduce the time needed for *multiple, successive* primality tests, *the sieve of Eratosthenes* can be generated and used (remember there's no primality testing needed for generating the sieve). If a number is divisible by any *multiple of 2*, we know for sure it is also divisible by *2*, making some of the computations redundant.

The pseudocode looks like this:
```
function prime(n)
  if n <= 1
    return false
  int i = 2
  while(i×i <= n)
    if sieve[i]
//if i is prime, check if it divides n
      if n%i == 0
//if it does, then n is not prime
        return false
//if i is not prime or it doesn't divide n
//check the next value
    i++
  return true
```
The size of the generated `sieve` depends on the requirements of the problem. Usually, you'd want it to contain all the numbers up to `√m`, where **m** is the maximum value in the set of numbers to be tested.

---
## Practice

What is the largest number we should divide *n* by to make sure we took into account all the possible divisors and also ensure optimality of the algorithm?

???

* √n
* n/2
* n
* log n

---
## Revision

What is a prime number?

???

* Any number whose divisors are only 1 and itself.
* Any number that has at least 2 divisors.
* Any number that is not a multiple of 2.
* Any number that has only 1 as its divisor.


