---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
---

# Remainders Made Easy

---
## Content

The modulus operation in Kotlin finds the remainder of a division, similar to figuring out how many apples are left after sharing them equally among friends.

```kotlin
val apples = 17
val friends = 5
val remainder = apples % friends
println(remainder) // 2
```

> ➗ **Modulus**: Find the remainder of a division.

This operation is handy for determining leftovers or cyclic patterns, such as figuring out the day of the week after a certain number of days.

For example, If today is Monday (day 0), what day will it be in 10 days?

Use modulus to calculate:

```kotlin
val daysInWeek = 7
val today = 0 // Monday is day 0
val daysFromNow = 10
val futureDay = (today + daysFromNow) % daysInWeek
println(futureDay) // 3 (Thursday)
```


---
## Practice

What is the result of `14 % 3`?

???

- 2
- 1
- 3


---
## Revision

The modulus operation finds the ??? of a division.

- `remainder`
- `quotient`
- `product`


