---
author: enki-ai
type: normal
category: must-know
---

# Abstract Classes

---
## Content

Sometimes you want to define a class that can be used as a template for other classes, but you don't want to use it to create any data directly.

Abstract classes are used to define a shared template for other classes but cannot be instantiated themselves:

```kotlin
// This class can define a template for other classes
// but will never be used to create generic shapes
// in our program, we will use Circle, Rectangle, etc.
abstract class Shape {
    abstract fun calculateArea(): Double

    fun printArea() {  // Concrete method
        println("Area: ${calculateArea()}")
    }
}
```

Abstract methods are used when you want to define a common functionality across multiple classes but leave the implementation details to the individual subclasses.

Here's how you can use the `Shape` class and implement its `calculateArea` method:

```kotlin
class Circle(val radius: Double) : Shape() {
    override fun calculateArea(): Double {
        return 3.14 * radius * radius
    }
}

fun main() {
    val circle = Circle(5.0)
    circle.printArea()  // Output: Area: 78.5
}
```

Keep in mind that if you try to create an instance of the `Shape` class, you will get an error:

```kotlin
// val shape = Shape()  // Error: Cannot create abstract class
```

The `calculateArea` method in Shape is abstract because every shape has a different way of calculating its area.

But we can also have concrete methods in an abstract class.

```kotlin
abstract class Shape {
    abstract fun calculateArea(): Double

    // All shapes use the same way to print the area
    // but the way to calculate the area is different for each shape
    fun printArea() {  // Concrete method
        println("Area: ${calculateArea()}")
    }
}
```

> 💡 Abstract classes can have both abstract and concrete methods.

---

## Practice

Complete the abstract class and its implementation:

```kotlin
??? class Vehicle {
    ??? fun start()
}

class Car : Vehicle() {
    ??? fun start() {
        println("Car engine starting")
    }
}
```

- `abstract`
- `abstract`
- `override`
- `open`
- `virtual`
- `implements`

---

## Revision

If we want to define a class that can be used as a template for other classes, but we don't want to use it to create any data directly, we can use an ??? class.

Inside this class, we can define two types of methods:

??? methods: methods that are not implemented in the class but must be implemented in the child class.

??? methods: methods that are implemented in the class and shared across all child classes.

- `abstract`
- `Abstract`
- `Concrete`
- `override`
- `open`
- `super`
- `Parent`
- `Child`
