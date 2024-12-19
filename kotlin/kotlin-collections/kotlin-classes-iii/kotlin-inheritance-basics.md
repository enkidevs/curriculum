---
author: enki-ai
type: normal
category: must-know
---

# Inheritance Basics

---
## Content

In Kotlin, classes can inherit properties and methods from other classes using the `:` symbol:

```kotlin
open class Animal {
    var name: String = ""

    fun eat() {
        println("$name is eating")
    }
}

class Dog : Animal() {
    fun bark() {
        println("$name says: Woof!")
    }
}

fun main() {
    val dog = Dog()
    dog.name = "Rex"
    dog.eat()   // Inherited from Animal
    dog.bark()  // Dog's own method
}
```

> 💡 Classes must be marked `open` to be inherited from.
---

## Practice

Complete the code to create a class that inherits from Animal:

```kotlin
??? class Animal {
    fun makeSound() {
        println("Some sound")
    }
}

class Cat ??? Animal??? {
    fun purr() {
        println("Purr")
    }
}
```

- `open`
- `:`
- `()`
- `extends`
- `implements`
- `inherit`

---

## Revision

The keyword ??? is used before `class` to create a class that inherits from another class.

- `open`
- `extends`
- `implements`
- `Parent`
- `Child`
