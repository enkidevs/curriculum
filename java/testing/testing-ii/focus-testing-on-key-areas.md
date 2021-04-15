---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - testing
  - junit
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2012/08/best-practices-to-write-junit-test.html){website}
  - >-
    [zeroturnaround.com](http://zeroturnaround.com/rebellabs/dont-test-blindly-the-right-methods-for-unit-testing-your-java-apps/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Focus testing on key areas


---

## Content

Unless you are working on a fairly simple project, it is unlikely that you will be able to test the outcome of every single operation that occurs in your code. Rather than aiming to test everything, it is more effective to focus on the most important parts of your code. 

- Avoid testing trivial operations or simple methods like getX() or setX() methods. There is not enough complexity here to warrant an automated test. 
- Also avoid testing external resources like libraries or databases. It is better to assume that they function correctly and focus on your own code.

Instead, focus on the parts of the code which deal with the core operations of your project. For example:

- Code that is frequently accessed by other modules. This is a good type of area to test because any bugs in this part of the program will affect multiple modules.
- Code written or updated by multiple developers.
- Any other code that seems to frequently cause bugs. It is good practice to add a unit test for every bug fixed.


---

## Practice

What should be prioritized when testing?

???

- `code written by multiple developers`
- `trivial operations like getX()`
- `external databases`


---

## Revision

What area of testing should not be prioritized?

???

- `external libraries`
- `code with frequent bugs`
- `code accessed by other modules`
