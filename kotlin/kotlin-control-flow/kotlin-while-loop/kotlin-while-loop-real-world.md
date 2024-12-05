---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# While Loop Real World

---
## Content

You can imagine a loop being used for animation, kind of like those flip book cartoons that animate when you turn the pages really fast.

[flip book](https://img.enkipro.com/6810d4789b02845bb2f99e31e793bbcd.gif)

Here's how you might write a game loop that keeps repainting the screen until the game is over:   

```kotlin
while (isGameRunning) {
  repaintScreen()
  if (gameOver() || playerQuit()) {
    isGameRunning = false
  }
}
```

---
## Practice

What will this Kotlin while loop print?

```kotlin
var isGameRunning = true
while (isGameRunning) {
  println("still running")
  isGameRunning = false
}
```

It will print ???.

- `still running` once
- `still running` twice
- `still running` three times
- `still running` forever