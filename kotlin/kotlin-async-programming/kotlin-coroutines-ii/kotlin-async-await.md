---
author: enki-ai
type: normal
category: must-know
---

# Async and Await

---
## Content

The `async` builder returns a `Deferred` value that can be awaited:

```kotlin
suspend fun fetchUserData(): UserData = coroutineScope {
    // Start two operations concurrently
    val profile = async { fetchProfile() }
    val friends = async { fetchFriends() }

    // Wait for both results
    UserData(
        profile = profile.await(),
        friends = friends.await()
    )
}
```

You can also handle errors with async:

```kotlin
val result = try {
    // Start multiple operations
    val data1 = async { fetchData1() }
    val data2 = async { fetchData2() }

    // Combine results
    combineData(
        data1.await(),
        data2.await()
    )
} catch (e: Exception) {
    // Handle any errors from either operation
    handleError(e)
}
```

> 💡 Best practices:
> - Use `async` for concurrent operations
> - Await all results together
> - Handle errors appropriately
---

## Practice

Complete the code to run operations concurrently:

```kotlin
coroutineScope {
    val first = ??? { task1() }
    val second = ??? { task2() }
    
    useResults(
        first.???(),
        second.???()
    )
}
```

- `async`
- `async`
- `await`
- `await`
- `launch`
- `get`

---

## Revision

`async` returns a ??? that can be ???.

- `Deferred`
- `awaited`
- `Job`
- `cancelled`
