---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# While Loop

---
## Content

A **while loop** is like checking your phone repeatedly until you get that special text you're waiting for.

Here's a simple example of counting to 3 using a while loop:

```kotlin
var count = 1
while (count <= 3) {
    println("This is message $count")
    count++
}
```

This will print:
```
This is message 1
This is message 2
This is message 3
```

The loop continues as long as the condition `count <= 3` is true. Each time through the loop, we:
1. Print the message
2. Increase `count` by 1

Here's the order of steps that happen in the loop:
```
count is 1
check if count <= 3
it is so print "This is message 1"
increase count by 1

count is 2
check if count <= 3
it is so print "This is message 2"
increase count by 1

count is 3
check if count <= 3
it is so print "This is message 3"
increase count by 1

count is 4
check if count <= 3
it is not so stop
```

When the loop is done, we continue with the rest of the program.

---
## Practice

What will this Kotlin while loop print?

```kotlin
var count = 1
while (count < 4) {
    println(count)
    count++
}
```

It will print ???.

- 1, 2, 3
- 1, 2, 3, 4
- 0, 1, 2


---
## Revision

A while loop continues to execute as long as the condition is met.

- `true`
- `false`


