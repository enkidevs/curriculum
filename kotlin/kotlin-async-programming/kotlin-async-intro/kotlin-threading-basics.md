---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Threading Basics

---
## Content

Threads are one of the most traditional approaches to prevent applications from blocking:

```kotlin
fun postItem(item: Item) {
    // This would block the main thread
    val token = preparePost()
    val post = submitPost(token, item)
    processPost(post)
}

// Using threads to avoid blocking
thread {
    val token = preparePost()
    val post = submitPost(token, item)
    processPost(post)
}
```

> 💡 While threads are powerful, they're not always the best solution due to:
> - High resource costs
> - Platform limitations
> - Complexity in debugging
> - Race condition risks

---

## Practice

What's a major drawback of using threads?

???

- `They require costly context switches`
- `They are too fast`
- `They use too little memory`
- `They are too simple`

---

## Revision

Threads are not available on which platform?

???

- `JavaScript`
- `JVM`
- `Android`
- `Native`
