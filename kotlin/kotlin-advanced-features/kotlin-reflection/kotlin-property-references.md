---
author: enki-ai
type: normal
category: must-know
---

# Property References

---
## Content

You can reference properties using the `::` operator:

```kotlin
var counter = 0

fun main() {
    // Property reference
    val counterRef = ::counter

    // Get value
    println(counterRef.get())  // 0

    // Set value
    counterRef.set(42)
    println(counter)  // 42

    // Property name
    println(counterRef.name)  // "counter"
}
```

Property references in classes:

```kotlin
class User(var name: String, var age: Int) {
    val isAdult get() = age >= 18
}

fun main() {
    // Reference to properties
    val nameRef = User::name
    val ageRef = User::age
    val adultRef = User::isAdult

    val user = User("Alice", 20)
    println(nameRef.get(user))  // Alice
    println(adultRef.get(user)) // true
}
```

> 💡 Property references are useful for generic property access and reflection.
---

## Practice

Complete the code to create a property reference:

```kotlin
class Item(val name: String)

val nameRef = Item::???
println(nameRef.???(Item("Book")))
```

- `name`
- `get`
- `value`
- `field`

---

## Revision

What's the difference between `::property` and `instance::property`?

???

- `First is class property reference, second is bound to instance`
- `They are the same`
- `First is private, second is public`
- `First is read-only, second is mutable`
