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

# Callback Approach

---
## Content

Callbacks pass functions as parameters to be invoked when a process completes:

```kotlin
fun postItem(item: Item) {
    preparePostAsync { token ->
        submitPostAsync(token, item) { post ->
            processPost(post)
        }
    }
}

fun preparePostAsync(callback: (Token) -> Unit) {
    // Make request and return immediately
    // Invoke callback later when done
    callback(token)
}
```

However, callbacks can lead to deeply nested code ("callback hell"):

```kotlin
// Deeply nested callbacks become hard to read
fun processMultipleItems() {
    preparePostAsync { token ->
        getItemsAsync { items ->
            items.forEach { item ->
                submitPostAsync(token, item) { post ->
                    processPost(post) { result ->
                        saveResult(result) { 
                            // Even more nesting...
                        }
                    }
                }
            }
        }
    }
}
```

> 💡 Callbacks have drawbacks:
> - Nested callbacks become unmanageable
> - Error handling is complicated
> - Code flow is harder to follow

---
## Practice

What's the main problem with using many nested callbacks?

???

- `Code becomes hard to read and maintain`
- `Callbacks are too slow`
- `Memory usage increases`
- `The program crashes`

---
## Revision

The pattern of deeply nested callbacks is often called:

???

- `Callback hell`
- `Callback heaven`
- `Callback pyramid`
- `Callback chain` 