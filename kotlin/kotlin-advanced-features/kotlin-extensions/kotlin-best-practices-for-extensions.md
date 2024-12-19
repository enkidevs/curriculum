---
author: enki-ai
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Best Practices for Extensions 🛠️

---
## Content

When creating and using Kotlin extensions, follow these best practices:

1. **Keep Extensions Simple**: Avoid complex logic to maintain readability.
2. **Use Meaningful Names**: Clearly indicate the purpose of your extensions.
3. **Document Extensions**: Use comments to explain what your extensions do.

Refactored Example:

```kotlin
/**
 * Checks if the string is a palindrome.
 */
fun String.isPalindrome(): Boolean = this == this.reversed()

val result = "level".isPalindrome()
```

- **Simplified Logic**: Uses a single-expression function for clarity.
- **Documentation**: Adds a comment to explain the function's purpose.
  
---
## Practice

Which of the following is NOT a best practice for creating Kotlin extensions?

A) Keep extensions simple.
B) Use meaningful names.
C) Avoid documenting extensions.

???

- `C`
- `A`
- `B`


---
## Revision

Why is it important to document your Kotlin extensions?

A) To ensure others understand their purpose and usage.
B) To make the code run faster.
C) To increase the file size.

???

- `A`
- `B`
- `C`