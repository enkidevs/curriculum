---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Type Variance: One-Way Streets 🚦

---
## Content

Type variance in Kotlin helps us control how generic types can be used, similar to a one-way street that only allows traffic in a specific direction.

The `out` keyword in Kotlin indicates that a type parameter can only be used to produce or return values, not to consume them. This is called covariance.

Here's a practical example:

```kotlin
fun copy(from: Array<out Number>, to: Array<Number>) {
    // 'out' means we can only read from 'from'
    // and can't modify its contents
    for (i in from.indices) {
        to[i] = from[i]
        println("Copied: ${from[i]}")
    }
}

// Usage example:
val integers = arrayOf(1, 2, 3)           // Array<Int>
val numbers = arrayOfNulls<Number>(3)     // Array<Number>
copy(integers, numbers)                   // Works safely!
```

Key points:
- `out` makes the type parameter covariant
- It allows us to read from `Array<Int>` as if it were `Array<Number>`
- This is safe because every `Int` is a `Number`
- Without `out`, the above code wouldn't compile
---

## Practice

What does the `out` keyword in Kotlin generics indicate?

???

- The type parameter can only be used to produce/return values
- The type parameter can only be used to consume values
- The type parameter can be used for both input and output
- The type parameter must be a number

---

## Revision

Given this code, what will compile successfully?

```kotlin
fun process(data: Array<out Number>) {
    // Which operations are valid?
    val first = data[0]     // A
    data[0] = 42           // B
    val sum = data.sum()    // C
}
```

???

- Only A and C will compile
- All operations will compile
- Only B will compile
- None will compile
