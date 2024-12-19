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

# Reactive Extensions

---
## Content

Reactive Extensions (Rx) treat data as observable streams:

```kotlin
// Creating an observable stream
val numbers = Observable.just(1, 2, 3, 4, 5)

numbers
    .filter { it % 2 == 0 }    // Filter even numbers
    .map { it * 2 }            // Double them
    .subscribe { 
        println(it)            // Print results
    }
```

Rx is powerful for handling streams of data:

```kotlin
// Handling user input as a stream
buttonClicks
    .throttleFirst(1, TimeUnit.SECONDS) // Prevent rapid clicks
    .flatMap { click -> 
        api.getData()                   // Make API call
            .onErrorResumeNext { 
                Observable.empty()      // Handle errors
            }
    }
    .subscribe { data ->
        updateUI(data)                 // Update UI
    }
```

> Rx introduces the concept that "everything is a stream":
> - Events are streams
> - Data is a stream
> - Errors are part of the stream
> - Consistent API across platforms

---
## Practice

In Rx, what does `flatMap` do?

???

- `Transforms each element into an Observable`
- `Filters elements`
- `Combines streams`
- `Counts elements`

---
## Revision

Reactive Extensions treat everything as:

???

- `Observable streams`
- `Promises`
- `Callbacks`
- `Threads` 