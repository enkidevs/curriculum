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

# Arrays: Fixed Size Lockers

---
## Content

Arrays in Kotlin are like a row of lockers, each holding one item. 

Once set, their size can't change, similar to a fixed number of lockers in a gym.

```kotlin
fun main() {
    val numbers = arrayOf(1, 2, 3, 4, 5)
    println(numbers[0]) // Access the first element
}
```

> 💡 Arrays are fixed in size and created with the `arrayOf()` function.

Each item has a position number starting from 0. Use `numbers[0]` to get the first item, `numbers[1]` for the second item, and so on.

> 💡 An array position is called an *index*.

  
---
## Practice

What will this Kotlin code print?

```kotlin
val colors = arrayOf("Red", "Green", "Blue")
println(colors[1])
```

???

- `Green`
- `Red`
- `Blue`


---
## Revision

How do you access the third element in this array?

```kotlin
val fruits = arrayOf("Apple", "Banana", "Cherry")
```

???

- `fruits[2]`
- `fruits[3]`
- `fruits[1]`