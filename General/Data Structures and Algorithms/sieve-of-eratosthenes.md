# sieve-of-eratosthenes
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Sieve of Eratosthenes** is a simple algorithm for finding all the prime numbers smaller than a given value.

The simplicity of the algorithm comes from the fact that no *primality testing*, which will be discussed in a further insight, will be necessary.

A prime number is the number that has exactly two distinct natural divisors: *1* and *itself*. Every prime number (other than *2*) will therefore be *odd*.

Sieve of Eratosthenes algorithm goes as follows:
- create a list of numbers from 2 to a maximum number *n*.
- starting with 2, *mark as **not prime** * every multiple of 2 ( 4,6,8 ... 2k<=n); **do not mark** 2 .
- find the next *unmarked* number and repeat the marking procedure .
- the algorithm ends when the current value reaches the largest number (n).

This is how the algorithm works:
```
// initial state, n=15
// unmarked numbers
2 3 4 5 6 7 8 9 10 11 12 13 14 15

// 2 is unmarked
// mark multiples of 2
2 3 5 7 9 11 13 15

// 3 is unmarked
// mark multiples of 3
2 3 5 7 11 13

// 5 is unmarked
// mark multiples of 5
2 3 5 7 11 13

// 7, 11, 13 unmarked
// mark multiples of 7,11,13
2 3 5 7 11 13

```
The unmarked values left are all the prime numbers smaller than *n*.


---
## Practice

What is the space required by the algorithm?

???

If this is too easy, try to find the *time upper bound* by yourself.
*O(n)
*O(n×n)
*O(log n)
*O(n×log n)
---
## Revision

You would use the sieve of Eratosthenes for

???.
*finding prime numbers between 1 and n
*testing if a number is prime
*test if a tree has a binary search tree's properties
*finding the prime divisors of a number