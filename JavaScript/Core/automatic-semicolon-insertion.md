# Automatic Semicolon Insertion
author: mihaiberq

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

---
## Content
 
---
## Quiz

headline: what will the following snippet output?

question: |
  function pi() {
    return
    {
      pi: 3.14
    }
  }
  console.log(pi())

answers:
  - undefined
  - {pi: 3.14}
  - SyntaxError
  - {'pi': 3.14}
