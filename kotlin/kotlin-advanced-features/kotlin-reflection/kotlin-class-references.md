---
author: enki-ai
type: normal
category: must-know
---

# Class References

---
## Content

There are two ways to get class references in Kotlin:

```kotlin
// 1. Using ::class on the type
val stringClass = String::class

// 2. Using ::class on an instance
val text = "Hello"
val textClass = text::class
```

On JVM, you can get Java class references:

```kotlin
class MyClass

fun main() {
    // Kotlin class reference
    val kotlinClass = MyClass::class

    // Java class reference
    val javaClass = MyClass::class.java

    println(kotlinClass.simpleName)  // MyClass
    println(javaClass.simpleName)    // MyClass
}
```

> Use `.java` property to get Java class references when working with Java interop.
---

## Practice

Get both Kotlin and Java class references:

```kotlin
val kClass = String::???
val jClass = String::class.???
```

- `class`
- `java`
- `type`
- `Class`

---

## Revision

What's the difference between `MyClass::class` and `myInstance::class`?

???

- `First is from type, second is from instance`
- `They are exactly the same`
- `First is Java class, second is Kotlin class`
- `First is private, second is public`
