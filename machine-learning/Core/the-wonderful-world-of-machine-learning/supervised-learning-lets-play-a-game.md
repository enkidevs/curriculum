# Supervised learning: Let's play a game!
author: stefanoeb

levels:

  - basic

type: normal

category: must-know

---
## Content

Let's take a look at what the biggest and most widely studied area of machine learning is about: `Supervised learning`. It is used when we want to `train` an algorithm **with past data**, so he can make **predictions** about future data inputs.

Sounds weird, because so far we told computers what to do **and give them the inputs**, and they give us the `result or output`. Now with supervised learning we give the computer the `inputs` and the `results or outputs`, and they give us **what to do**.

Now, I will bring you a challenge: try to guess what's the last number denoted with a `???`.

| Input        | Output         |
|:-------------:|:-------------:|
| 1             | 2             |
| 2             | 4             |
| 3             | 6             |
| 4             | 8             |
| 5             | ???           | What's the output? |

Our human brain is capable of understanding simple patterns between things and numbers. Figured out who's the last number?

It is `10`. If you train a `regression` algorithm with the data above he will probably find out that **the output is the input times two (input*2)**, or:
```
f(x) = x * 2
```

But with real life problems things may get way more complicated, what if the output for number `6` was `43`? Would you change anything in our function? The goal of supervised learning is not to be **perfect**, but to minimize the errors, or **be as close to perfect as possible**.

## Practice

With our found pattern (or function) above, what would be the output to number 11?
???

* 22
* 110
* 121
