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

# Data Class Features

---
## Content

Data classes provide additional features for working with data:

```kotlin
data class Person(
    val name: String,
    var age: Int
)

fun main() {
    val alice = Person("Alice", 30)
    
    // Using copy() to create modified instances
    val olderAlice = alice.copy(age = 31)
    
    // Destructuring declarations
    val (name, age) = alice
    println("$name is $age years old")
    
    // Component functions
    println(alice.component1())  // name: Alice
    println(alice.component2())  // age: 30
    
    // Using in collections
    val people = hashSetOf(
        Person("Bob", 25),
        Person("Bob", 25)  // Won't be added (equals)
    )
    println(people.size)  // 1
}
```

> 💡 Advanced features:
> - copy() for creating modified copies
> - Destructuring for unpacking properties
> - Component functions for positional access
> - Proper collection behavior

---
## Practice

Complete the code to create a modified copy:

```kotlin
data class Item(val name: String, val price: Double)

val item = Item("Book", 29.99)
val discounted = item.???(??? = 19.99)
```

- `copy`
- `price`
- `clone`
- `name`

---
## Revision

What feature allows unpacking data class properties into variables?

???

- `Destructuring declarations`
- `Component functions`
- `Copy method`
- `toString method` 