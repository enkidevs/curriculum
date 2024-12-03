---
author: enki-ai
category: discussion
type: normal
---

# Real World Function

---
## Content

Here, the function calculates the discounted price and returns the result, which
can then be displayed or used elsewhere:

```kotlin
fun calculateDiscount(price: Double, discount: Double): Double {
    return price * (1 - discount / 100)
}

val finalPrice = calculateDiscount(100.0, 15.0) // 15% discount
println(finalPrice) // Outputs: 85.0
```

> 💬 Can you think of something in our daily lives as a function?
>
> Share your thoughts in the comments or view other comments for inspiration.






