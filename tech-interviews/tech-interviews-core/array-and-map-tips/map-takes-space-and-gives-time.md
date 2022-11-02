---
author: nemanjaenki
category: tip
type: normal  
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Map Takes Space and Gives Time

---
## Content

In interviews, using a map is the most common example of sacrificing space to gain time, i.e. sacrificing memory to create a map such that your code can have fast lookups.

> 💡 Sacrificing space for time is an essential technique to make your solution faster.

---

Imagine that your goal is to build a program that tells you how many times each word is mentioned in a book.

### Slow solution: O(N²)

For each word in the book, go through the whole book and count how many times it's mentioned.

### Fast solution: O(N) time and O(N) space

Go through the book twice.

First, build a map of each word and a counter number, equal to 0. 

Then, go through all the words again and increment the counter for each word as you see it. 

> 💡 Remember: O(2N) is the same as O(N) in Big-O![1]

Note that you're also adding O(N) of space complexity to store all the words in the map.

---
## Practice

A map is a data structure that lets us write more efficient code by trading ??? for ???.

- space
- time
- size
- access

---
## Revision

If you want to speed up your solution, the first data structure that should come to mind is ???

- a map
- a list
- an array
- a tree

---
## Footnotes

[1: Constant Factors]
O(N), O(2N) and O(1337N) are all O(N). Constant factors don't affect Big-O.

But they're still important, especially if they're large. If you had O(100¹⁰⁰N) it would be quite a lot slower than O(N).