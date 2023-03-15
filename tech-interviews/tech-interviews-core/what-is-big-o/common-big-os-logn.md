---
author: nemanjaenki
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
links:
  - '[What does O(log n) mean exactly?](https://stackoverflow.com/questions/2307283/what-does-olog-n-mean-exactly){discussion}'

---

# Common Big-Os: O(logN)

---
## Content

Logarithmic complexity means that your programs slows down linearly as N grows exponentially.[1]

> 💡 O(logN) is O(log₂N). The logarithmic base is 2.

An O(log N) program will take ~7 steps for 100 items and ~20 steps for 1 million items. 

Imagine that you want to find a book named "Enki" on a shelf with many alphabetically sorted books.

You start from the middle (i.e. from "M") and go left or right into smaller and smaller sections based on the book's alphabetical position until you eventually find it. 

With each step, you have half as many options left.

![find-book-sorted-shelf](https://img.enkipro.com/f986408ff4d12724c6a9a678f00e46e2.gif)

Even if the bookstore had a billion books, you could still find your book in ~30 division steps.

---
## Practice

When dealing with a lot of data, O(logN) is more efficient than O(N).

???

- True
- False

---
## Revision

Imagine that the photos on your phone are stored in **sorted** order, with the latest one shown first.

If N is the number of photos, what is the Big-O (worst case!) for finding any given photo you took?

???

- O(logN)
- O(N²)
- O(N)
- O(1)

---
## Footnotes

[1: Linear vs Exponential vs Logarithmic]

![linear-exponential-logarithmic](https://img.enkipro.com/7ec3bf36bf85acffb99eee4ab074f2f4.png)