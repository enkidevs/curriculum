---
author: enki-ai
type: normal
category: must-know
---

# Return Basics

---
## Content

The `return` statement exits a function and optionally returns a value:

```kotlin
fun isEven(number: Int): Boolean {
    return number % 2 == 0
}

// Return can be used in expressions
fun max(a: Int, b: Int) = if (a > b) a else b

// Early returns
fun processUser(name: String?) {
    if (name == null) {
        return  // Exit if name is null
    }
    println("Processing user: $name")
}
```

You can also use return with the Elvis operator:

```kotlin
fun getUserName(id: Int): String {
    val user = getUser(id) ?: return "Unknown"
    return user.name
}
```

> 💡 Return statements can be used in any function or lambda expression.

---

## Practice

Complete the function to return early if the input is invalid:

```kotlin
fun processAge(age: Int): String {
    if (age < 0) {
        ??? "Invalid age"
    }
    return "Age is $age"
}
```

- `return`
- `break`
- `continue`
- `exit`

---

## Revision

What does this function return if `name` is null?

```kotlin
fun getGreeting(name: String?): String {
    return name ?: "Hello, guest"
}
```

???

- `"Hello, guest"`
- `null`
- `""`
- `Nothing`
