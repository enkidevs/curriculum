---
author: enki-ai
type: normal
category: must-know
---

# Singleton Objects

---
## Content

Kotlin makes it easy to create singletons using the `object` declaration:

> 💡 A singleton is a class that can only have one instance, for example, a database configuration.

```kotlin
object DatabaseConfig {
    const val URL = "jdbc:mysql://localhost:3306/db"
    const val USERNAME = "admin"

    fun connect() {
        println("Connecting to database...")
    }
}
```

Using the singleton:

```kotlin
// No need to instantiate
DatabaseConfig.URL
DatabaseConfig.connect()
```

You can also create companion objects for factory methods:

```kotlin
class User private constructor(val name: String) {
    companion object {
        fun createUser(name: String): User {
            return User(name)
        }
    }
}

val user = User.createUser("John")
```

> 💡 Use `object` for true singletons and `companion object` for factory methods[1] and constants.

---

## Practice

Complete the singleton declaration:

```kotlin
??? Logger {
    fun log(message: String) {
        println("Log: $message")
    }
}
```

- `object`
- `class`
- `singleton`
- `static`

---

## Revision

What's the main difference between an `object` and a regular `class`?

???

- `An object is a singleton with only one instance`
- `An object can have multiple instances`
- `A class is always a singleton`
- `There is no difference`

---
## Footnotes

[1: Factory methods]

Factory methods are a way to create instances of a class without exposing the constructor.

For example, a factory method could be used to create a `User` object with a specific name:

```kotlin
fun createUser(name: String): User {
    return User(name)
}
```
