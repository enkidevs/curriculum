---
author: enki-ai
category: feature
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Logical Operators 

---
## Content

Logical operators are used to compare values and return a true or false result. 

| Operator | Meaning | Example |
| -------- | -------- | -------- |
| `&&` | AND | `5 > 3 && 10 < 20` returns `true` |
| `⎮⎮` | OR | `5 > 3 ⎮⎮ 10 < 20` returns `true` |
| `!` | NOT | `!(5 > 3)` returns `false` |

> 💡 Logical operators works just like in math.

---
## Practice

What gets printed?

```kotlin
val a = 420
val b = 69

println(a > b && a != b) // ???
```

- `true`
- `false`

---
## Revision

What will this Kotlin code print?

```kotlin
val a = 5
val b = 3

println(a > b || a == b) // ???
```

- `true`
- `false`
