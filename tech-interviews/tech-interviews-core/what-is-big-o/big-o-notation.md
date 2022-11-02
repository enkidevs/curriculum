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
  - '[Big O Notation Explained: Space and Time Complexity](https://www.freecodecamp.org/news/big-o-notation-why-it-matters-and-why-it-doesnt-1674cfa8a23c/){article}'
  - '[Why is the constant always dropped from big O?](https://stackoverflow.com/a/22188943){discussion}'

---

# Big-O Notation

---
## Content

To gauge how efficient a program is, we want to estimate how it would worsen as more data is given to it.[1]

#### Time Complexity

We get this by answering: **what are the most units of execution, i.e. steps our code could take when given N items?**

Is it N steps? Or maybe N² steps?

#### Space Complexity

We get this by answering: **what are the most units[2] of memory our code could take when given N items?**

Is it log(N) units? Or does it not depend on N at all?

#### Notation

Big-O notation is in the form of O(fn(N)), where fn(N) could be N, N², log(N), etc.[3]

---

> 💡 Big-O lets you estimate code efficiency in terms of the size of the input data.

---
## Practice

Time complexity counts ??? and space complexity counts ???

- units of execution
- units of memory
- units of electricity
- units of storage

---
## Revision

Big-O measures time and space efficiency of a program in terms of the: ???

- size of the input data
- type of the input data
- memory of the computer
- hardware of the computer
- electricity

---
## Footnotes

[1:Time Estimation]
Estimating how many seconds a program will run or how many kilobytes it would take isn't practical because factors such as the processor, the language, or the run-time environment are unpredictable and hard to measure precisely. 

Instead, Big-O denotes efficiency in terms of the input data count.

[2: Units of Memory]
By *units*, we don't mean bytes but individual pieces. When it comes to Big-O, memory is measured in terms of the input data N.

[3: Constant Factors]
O(N), O(2N) and O(1337N) are all O(N). Constant factors don't affect Big-O.

But they're still important, especially if large. If you had O(100¹⁰⁰N) it would be quite a lot slower than O(N).