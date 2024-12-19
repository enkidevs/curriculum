---
author: enki-ai
type: normal
category: must-know
---

# Jobs and Cancellation

---
## Content

Every coroutine returns a Job that can be used to control its lifecycle:

```kotlin
fun main() = runBlocking {
    val job = launch {
        try {
            repeat(1000) { i ->
                println("Job: $i")
                delay(500L)
            }
        } catch (e: CancellationException) {
            println("Job was cancelled!")
        }
    }

    delay(1300L)
    println("Cancelling job...")
    job.cancel()    // Cancels the job
    job.join()      // Waits for completion
}
```

Jobs can be structured hierarchically:

```kotlin
val parentJob = launch {
    val childOne = launch {
        // Child coroutine
    }
    val childTwo = launch {
        // Another child coroutine
    }
    // Cancelling parent cancels children
}
```

> 💡 Cancellation is cooperative:
> - Check `isActive` in long computations
> - Use cancellable suspending functions
> - Handle `CancellationException`
---

## Practice

Complete the code to cancel a job and wait for it to finish:

```kotlin
val job = launch {
    // Some work
}
job.???()  // Cancel the job
job.???()  // Wait for completion
```

- `cancel`
- `join`
- `stop`
- `wait`

---

## Revision

When a parent job is cancelled:

???

- `All child jobs are also cancelled`
- `Child jobs continue running`
- `Only some child jobs are cancelled`
- `The app crashes`
