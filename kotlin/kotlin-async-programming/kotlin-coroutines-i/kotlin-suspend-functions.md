---
author: enki-ai
type: normal
category: must-know
---

# Suspend Functions

---
## Content

Suspend functions are functions that can be paused and resumed:

```kotlin
suspend fun doSomething() {
    delay(1000L)  // This is a suspend function
    println("Done!")
}

fun main() = runBlocking {
    doSomething()  // Must be called from a coroutine
}
```

Suspend functions can call other suspend functions:

```kotlin
suspend fun fetchUser(): User {
    delay(1000L)  // Simulate network delay
    return User("John")
}

suspend fun fetchProfile(user: User): Profile {
    delay(1000L)  // Simulate network delay
    return Profile(user)
}

suspend fun loadUserData() {
    val user = fetchUser()
    val profile = fetchProfile(user)
    println("User: ${profile.name}")
}
```

> 💡 Suspend functions:
> - Must be called from a coroutine or another suspend function
> - Can use other suspend functions
> - Are marked with the `suspend` keyword

---

## Practice

Mark the function as suspendable:

```kotlin
??? fun fetchData(): String {
    delay(1000L)
    return "Data"
}
```

- `suspend`
- `async`
- `await`
- `coroutine`

---

## Revision

A suspend function can only be called from:

???

- `A coroutine or another suspend function`
- `Any function`
- `The main thread`
- `A background thread`
