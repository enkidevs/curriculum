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

# Futures and Promises

---
## Content

Futures (or Promises) represent a value that will be available at some point:

```kotlin
fun postItem(item: Item) {
    preparePostAsync()
        .thenCompose { token -> 
            submitPostAsync(token, item)
        }
        .thenAccept { post ->
            processPost(post)
        }
}

fun preparePostAsync(): Promise<Token> {
    // Returns a promise that completes later
    return promise
}
```

This approach changes how we structure code:

```kotlin
// Traditional approach
fun processUser(id: Int) {
    val user = getUser(id)         // Blocks
    val profile = getProfile(user) // Blocks
    updateUI(profile)             // Blocks
}

// Using promises
fun processUser(id: Int) {
    getUserAsync(id)
        .thenCompose { user -> getProfileAsync(user) }
        .thenAccept { profile -> updateUI(profile) }
}
```

> 💡 Futures/Promises have some challenges:
> - Different programming model
> - New APIs to learn
> - Error handling complexity
> - Specific return types (Promise<T>)

---
## Practice

Complete the promise chain:

```kotlin
getUserAsync(id)
    .??? { user -> processUser(user) }
    .??? { result -> showResult(result) }
```

- `thenCompose`
- `thenAccept`
- `then`
- `next`

---
## Revision

Promises represent:

???

- `A value that will be available in the future`
- `A value that is immediately available`
- `A callback function`
- `A thread` 