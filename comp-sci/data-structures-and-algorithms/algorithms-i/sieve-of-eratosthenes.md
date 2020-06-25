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

  - obscura

links:

  - '[Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes){website}'

parent: binary-search

---

# Sieve of Eratosthenes

---
## Content

**Sieve of Eratosthenes** is a simple algorithm for finding all the prime numbers smaller than a given value. The algorithm dates way back, to *200BC*.

The simplicity of the algorithm comes from the fact that no *primality testing*, which will be discussed in a further insight, will be necessary.

A prime number is a number that has exactly two distinct natural divisors: *1* and *itself*. Every prime number (other than *2*) will therefore be *odd*.

Sieve of Eratosthenes algorithm goes as follows:
- Create a list of *n-1* consecutive numbers beginning with 2.
- Starting with 2, mark as **not prime** every multiple of 2 ( 4,6,8 ... 2k<=n); **do not mark** 2.
- Find the next *unmarked* number and mark its multiples (3, then 5 etc.).
- Repeat step 3 until the current value reaches the largest number (n).

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

//try 4, but it's marked
2 3 5 7 11 13

// 5 is unmarked
// mark multiples of 5
2 3 5 7 11 13

// 7, 11, 13 unmarked
// mark multiples of 7,11,13
2 3 5 7 11 13
```
The unmarked values left are all the prime numbers smaller than *n*.

When implementing the algorithm, you can reduce the memory used to store the values by using a boolean array of *length n* - "marking" a number becomes changing the boolean value at that specific index to *true*.

---
## Practice

What is the algorithm's `memory` complexity when an array is used to store up to `n` values?

???


* O(n)
* O(n×n)
* O(log n)
* O(n×log n)

---
## Revision

You would use the sieve of Eratosthenes for

???


* finding prime numbers between 2 and n
* testing if a number is prime
* test if a tree has a binary search tree's properties
* finding the prime divisors of a number


