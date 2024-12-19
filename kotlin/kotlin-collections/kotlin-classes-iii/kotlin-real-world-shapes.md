---
author: enki-ai
type: normal
category: discussion
---

# Real-World: Shapes

---
## Content

Let's create a shape hierarchy using inheritance and interfaces:

```kotlin
// Interface for objects that can be moved on a screen
interface Movable {
    fun move(x: Int, y: Int)
}

// Interface for objects that can be drawn on a screen
interface Drawable {
    fun draw()
}

// Base class for all shapes
abstract class Shape {
    abstract fun calculateArea(): Double
}

// A button in a UI that can be drawn and moved
class Button(private val text: String) : Drawable, Movable {
    override fun draw() {
        println("Drawing button with text: $text")
    }
    
    override fun move(x: Int, y: Int) {
        println("Moving button to ($x, $y)")
    }
}

// A circle shape that can be drawn and moved
class Circle(private val radius: Double) : Shape(), Drawable, Movable {
    override fun calculateArea(): Double {
        return Math.PI * radius * radius
    }

    override fun draw() {
        println("Drawing circle with radius: $radius")
    }

    override fun move(x: Int, y: Int) {
        println("Moving circle to ($x, $y)")
    }
}
```

> 💡 This example shows how inheritance and interfaces can create a flexible system for handling different types of shapes.

> 💬 Can you describe an example where you would use an interface instead of an abstract class? Share your thoughts in the comments below.

---

## Practice

An ??? is better suited than an ??? for defining roles or behaviors that unrelated classes can share.

- `interface`
- `abstract class`
- `class`
- `sealed class`

---

## Revision

An ??? is better suited than an ??? for defining roles or behaviors that unrelated classes can share.

- `interface`
- `abstract class`
- `class`
- `sealed class`
