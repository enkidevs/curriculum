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

# Real World Uses of Continue and Break

---
## Content

Let's see some real world uses of the `continue` and `break` statements.

**Song player**

```kotlin
while (true) {
    val userAction = getUserAction()
    if (userAction == "skip") {
        continue
    }
    if (userAction == "stop") {
        break
    }
    playNextSong()
}
```

> 🔄 The `while (true)` loop is an *infinite* loop that will run until the `break` statement is encountered.

---
## Practice

When will this loop stop?

```kotlin
while (true) {
    val userAction = getUserAction()
    if (userAction == "skip") {
        continue
    }
    if (userAction == "stop") {
        break
    }
}
```

When the `userAction` is equal to ???

- `stop`
- `skip`

---
## Revision

Make this loop stop when the `userAction` is equal to `stop`.

```kotlin
while (???) {
    val userAction = getUserAction()
    if (userAction == "skip") {
        ???
    }
    if (userAction == "stop") {
        ???
    }
}
```

- `true`
- `continue`
- `break`
- `false`
- `stop`
- `next`