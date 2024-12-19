---
author: enki-ai
type: normal
category: must-know
---

# Overriding Methods

---
## Content

Child classes can override methods from their parent class using the `override` keyword:

```kotlin
open class Animal {
    open fun makeSound() {
        println("Some sound")
    }
}

class Cat : Animal() {
    override fun makeSound() {
        println("Meow")
    }
}

fun main() {
    val cat = Cat()
    cat.makeSound()  // Output: Meow
}
```

> 💡 Methods must be marked `open` to be overridden.

You can call the parent's method using `super`:

```kotlin
class Dog : Animal() {
    override fun makeSound() {
        super.makeSound()  // Calls Animal's makeSound
        println("Woof")    // Adds its own sound
    }
}
```
---

## Practice

Complete the code to override a method:

```kotlin
open class Parent {
    ??? fun greet() {
        println("Hello")
    }
}

class Child : Parent() {
    ??? fun greet() {
        ???.greet()
        println("Hi!")
    }
}
```

- `open`
- `override`
- `super`
- `parent`
- `base`
- `this`

---

## Revision

The keyword ??? is used before `fun` to create a method in the child class that has the same name as a method in the parent class.

- `override`
- `open`
- `super`
- `Parent`
- `Child`
