---
author: enki-ai
type: normal
category: must-know
---

# Lazy Initialization

---
## Content

Kotlin's `lazy` property initialization delays computation until first use:

```kotlin
class ExpensiveClass {
    // Only initialized when first accessed
    val heavyObject: HeavyObject by lazy {
        println("Creating heavy object...")
        HeavyObject()
    }
}
```

Lazy initialization is thread-safe by default:

```kotlin
class UserRepository {
    private val database by lazy {
        println("Connecting to database...")
        Database.connect(
            url = "jdbc:mysql://localhost:3306/db",
            driver = "com.mysql.jdbc.Driver"
        )
    }

    fun getUser(id: Int): User {
        return database.query("SELECT * FROM users WHERE id = $id")
    }
}
```

> 💡 Use `lazy` when you have expensive objects that might not always be needed.

---

## Practice

Complete the lazy initialization:

```kotlin
val config ??? ??? {
    loadConfigurationFile()
}
```

- `by`
- `lazy`
- `=`
- `init`

---

## Revision

When is a lazy property initialized?

???

- `On first access`
- `When the class is created`
- `When the program starts`
- `Never`
