# primality-test
author: mihaiberq

levels:
	- basic

type: normal

category: must-know

---
## Content

**Primality test** is an algorithm for checking if a number is prime. 

Probably the simplest way to test if a number is prime is to divide it by every natural number smaller than it. If there is a division which leaves no remainder, then the number is *composite*. Otherwise, it is *prime* .

Some improvements can be made for the algorithm: there is no point in verifying numbers greater than √n . This is true because after that value, divisors will just switch places.
```
// take 36 for example
36 = 2×18 = 4×9 = 6×6
   = 18×2 = 9×4
```
In other words, if there isn't a divisor smaller than √n, there cannot be a *natural divisor* greater than √n .

To further reduce the time needed for *multiple, successive* primality tests, *the sieve of Eratosthenes* can be generated and used. If a number is divisible by any *2k* number, we know for sure it is also divisible by *2*, making some of the operations redundant.

The pseudocode looks like this:
```
function prime(n)
  if n <= 1
    return false
  while(i×i <= n)
    if sieve[i]
      if n%i=0
        return false
    i++
  return true
```


---
## Practice

What is the largest number we should divide *n* by to make sure we took into account all the possible divisors and also ensure optimality of the algorithm?

???
*sqrt(n)
*n/2
*n
*log n

---
## Revision

What is a prime number?

???
*A number that only has 1 and itself as divisors.
*A number that has at least 2 divisors.
*A number that is not a multiple of 2.
*A number that only has 1 as its divisor.