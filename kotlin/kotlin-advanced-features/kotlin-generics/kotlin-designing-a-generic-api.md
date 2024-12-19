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

# Designing a Generic API 🌐

---
## Content

Designing a generic API in Kotlin is like creating a catalog that can list any type of product, from books to electronics.

Here's how you create a generic function:

```kotlin
fun <T> getItems(): List<T> {
    // Implementation to fetch items
    return listOf()
}
```

- **Example**: Use this function to return a list of users or products, ensuring type safety.

This ensures your API can handle various data types without rewriting code.
  
---
## Practice

What is the benefit of using a generic function in an API?

A) It limits the API to one data type.
B) It allows the API to handle various data types without rewriting code.
C) It makes the API slower.

???

- `B`
- `A`
- `C`


---
## Revision

How would you define a generic function in Kotlin that returns a list of any type?

```kotlin
fun <T> ???(): List<T> {
    return listOf()
}
```

A) getItems
B) getList
C) getData

???

- `A`
- `B`
- `C`