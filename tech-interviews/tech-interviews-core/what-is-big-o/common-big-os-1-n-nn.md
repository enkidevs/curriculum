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

---

# Common Big-Os: O(1), O(N), O(N²)

---
## Content


#### O(1) → Constant Time

O(1) means your program will take the same amount of steps for 1 item and 1 million items.

![constant-time](https://img.enkipro.com/054fe12f263d2a9a96ca609f0f91ab9e.gif)

#### O(N) → Linear Time

O(N) means your program will take (at most) 100 steps for 100 items.

![linear-time](https://img.enkipro.com/c5c20d9ddbc7c5a399516dca7fc86f0b.gif)

#### O(N²) → Quadratic Time

O(N²) means your program will take (at most) 10,000 steps for 100 items.

![quadratic-time](https://img.enkipro.com/a23a37b44c99fdeec956f78c6bddcebf.gif)

> 💡 Note that the above example is actually O(F*P) where F is the number of fruit and P is the number of people. That's still quadratic time.

---
## Practice

Picture a bookstore with N books, and each book has P pages.

Finding if the word "enki" is mentioned in a given book is: ???

For every book, checking if another book references it is: ???

Opening a book on page 35 is: ???

- O(P)
- O(N*P)
- O(1)

---
## Revision

Picture a bookstore with N books, and each book has P pages.

Finding if the word "enki" is mentioned in a given book is: ???

For every book, checking if another book references it is: ???

Opening a book on page 35 is: ???

- O(P)
- O(N*P)
- O(1)
