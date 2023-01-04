---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Nesting ifelse Statements

---

## Content

Have you ever wanted to execute different actions in your R code based on multiple conditions? One way to do this is by using nested `ifelse` statements.

Nested `ifelse` statements are `ifelse` statements that are placed inside another `ifelse` statement. This allows you to create code that can execute different actions based on multiple conditions.

Here is an example of a nested ifelse statement in R:
```r
x <- 10
y <- 20

result <- ifelse(x > y, "x is greater than y",
                ifelse(x < y, "x is less than y", "x is equal to y"))
print(result)
```

In this example, the ifelse function first checks whether x is greater than y. If it is, the string "x is greater than y" is returned. If it is not, the ifelse function moves on to the next condition, which checks whether x is less than y. If it is, the string "x is less than y" is returned. If it is not, the final condition is evaluated, and the string "x is equal to y" is returned.


### When to use nested ifelse statements
---

Nested ifelse statements can be useful when you have multiple conditions to check and you want to execute different actions based on the results of those conditions. However, it is important to be careful when using nested ifelse statements, as they can quickly become difficult to read and maintain if you have too many levels of nesting.

### Conclusion
---

In summary, nesting ifelse statements in R allows you to create complex conditions and execute different actions based on those conditions. However, it is important to use them wisely to avoid making your code hard to read and maintain.





---
### What are nested ifelse statements?


<!-- 
In R, you can nest `ifelse` statements to create more complex conditions. This allows you to create code that can execute different actions based on multiple conditions.

Here is an example of how to nest `ifelse` statements in R:
```r
x <- 10
y <- 20

result <- ifelse(x > y, "x is greater than y", ifelse(x < y, "x is less than y", "x is equal to y"))
print(result)
```


In this example, the `ifelse` function first checks whether `x` is greater than `y`. If it is, the string `"x is greater than y"` is returned. If it is not, the `ifelse` function moves on to the next condition, which checks whether `x` is less than `y`. If it is, the string `"x is less than y"` is returned. If it is not, the final condition is evaluated, and the string "x is equal to y" is returned.

Nesting `ifelse` statements can be useful when you have multiple conditions to check and you want to execute different actions based on the results of those conditions.

However, it is important to be careful when using nested `ifelse` statements, as they can quickly become difficult to read and maintain if you have too many levels of nesting. -->


---
## Practice

Which of the following is a valid way to nest ifelse statements in R?

A)

```r
x <- 10
y <- 20

result <- ifelse(x > y, "x is greater than y") else {
  ifelse(x < y, "x is less than y") else {
    "x is equal to y"
  }
}
print(result)
```

B)

```r
x <- 10
y <- 20

result <- ifelse(x > y) {
  "x is greater than y"
} else {
  ifelse(x < y) {
    "x is less than y"
  } else {
    "x is equal to y"
  }
}
print(result)
```

C)
```r
x <- 10
y <- 20

result <- ifelse(x > y) {
  "x is greater than y"
}
ifelse(x < y) {
  "x is less than y"
}
ifelse(x == y) {
  "x is equal to y"
}
print(result)
```

D)
```r
x <- 10
y <- 20

result <- ifelse(x > y) {
  "x is greater than y"
} else {
  ifelse(x < y) {
    "x is less than y"
  } else {
    "x is equal to y"
  }
}
print(result)
```

???

- `B)`
- `A)`
- `C)`
- `D)`

---
## Revision
