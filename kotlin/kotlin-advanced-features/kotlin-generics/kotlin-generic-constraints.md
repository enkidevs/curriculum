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

# Generic Constraints

---
## Content

Generic constraints allow you to restrict which types can be used with your generic code:

```kotlin
// Single constraint - must be Comparable
class SortedList<T : Comparable<T>> {
    fun add(item: T) {
        // Can use comparison because T is Comparable
        if (item > existingItem) { /* ... */ }
    }
}

// Multiple constraints using where
interface Drawable {
    fun draw()
}

class Canvas<T> where T : View, T : Drawable {
    fun addElement(element: T) {
        element.draw()  // OK because T is Drawable
        element.layout() // OK because T is View
    }
}
```

Nullable type constraints:
```kotlin
// T can be nullable
class Box<T : Any?>(var value: T)

// T cannot be nullable
class NonNullBox<T : Any>(var value: T)

// Usage
val nullableBox = Box<String?>(null)     // OK
val nonNullBox = NonNullBox<String>(null) // Won't compile
```

Type constraints with `where`:
```kotlin
fun <T> copyWhenGreater(list: List<T>, threshold: T): List<String>
    where T : CharSequence,
          T : Comparable<T> {
    return list.filter { it > threshold }.map { it.toString() }
}
```

> 💡 Use type constraints to:
> - Ensure type safety
> - Access specific methods/properties
> - Create more specific APIs

---
## Practice

Complete the generic class with a constraint:

```kotlin
class NumberBox<T : ???> {
    fun process(value: T) {
        // Can use number methods
        value.toDouble()
    }
}
```

- `Number`
- `Any`
- `Comparable`
- `Object`

---
## Revision

What's the purpose of type constraints in generics?

???

- `To restrict which types can be used with generic code`
- `To improve performance`
- `To make code more readable`
- `To reduce compilation time` 