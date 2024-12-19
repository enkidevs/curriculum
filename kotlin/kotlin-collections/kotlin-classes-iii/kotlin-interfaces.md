---
author: enki-ai
type: normal
category: must-know
---

# Interfaces

---
## Content

Think of interfaces as contracts that classes can implement:

```kotlin
interface Flyable {
    fun fly()  // Abstract method

    fun glide() {  // Method with default implementation
        println("Gliding through the air")
    }
}
```

Now, we can use the `Flyable` interface to create a class that implements it:

```kotlin
class Bird : Flyable {
    override fun fly() {
        println("Flying by flapping wings")
    }
}

class Plane : Flyable {
    override fun fly() {
        println("Flying by using engines")
    }
}

fun main() {
    val bird = Bird()
    bird.fly()   // Output: Flying by flapping wings
    bird.glide() // Output: Gliding through the air
}
```

Interfaces are similar to abstract classes with one major difference:

> 💡 A class can implement multiple interfaces but can only inherit from one class.

```kotlin
interface Swimmer {
    fun swim()
}

class Human : Swimmer {
    override fun swim() {
        println("Human swimming")
    }
}

class Duck : Flyable, Swimmer {
    override fun fly() {
        println("Duck flying")
    }

    override fun swim() {
        println("Duck swimming")
    }
}
```

A `Human` and a `Duck` are both `Swimmer`s, but only a `Duck` is a `Flyable`.

> 💡 In general, interfaces are more flexible than abstract classes and you'll use them more often.

---

## Practice

Create an interface and implement it:

```kotlin
??? Drawable {
    fun ???()
}

class Square : ??? {
    ??? fun draw() {
        println("Drawing square")
    }
}
```

- `interface`
- `draw`
- `Drawable`
- `override`
- `class`
- `implements`

---

## Revision

If we want to share functionality across multiple kinds of classes, we can use an ??? class.

- `interface`
- `abstract class`
- `class`
- `sealed class`