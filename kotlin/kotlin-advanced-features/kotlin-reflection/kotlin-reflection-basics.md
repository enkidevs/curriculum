---
author: enki-ai
type: normal
category: must-know
---

# Reflection Basics

---
## Content

Reflection allows you to inspect your program's structure at runtime:

```kotlin
class Person(val name: String, val age: Int)

fun main() {
    // Get class information
    val personClass = Person::class

    // Print class name
    println(personClass.simpleName)  // Output: Person

    // List all properties
    personClass.members.forEach { member ->
        println(member.name)
    }
}
```

To use reflection in Gradle, add the dependency:

```kotlin
dependencies {
    implementation("org.jetbrains.kotlin:kotlin-reflect")
}
```

> 💡 Reflection is powerful but comes with a performance cost. Use it wisely.

---

## Practice

Complete the code to get class information:

```kotlin
val myClass = MyClass::???
println(myClass.???)  // Prints class name
```

- `class`
- `simpleName`
- `type`
- `name`

---

## Revision

What dependency is needed for Kotlin reflection?

???

- `kotlin-reflect`
- `kotlin-runtime`
- `kotlin-stdlib`
- `kotlin-core`
