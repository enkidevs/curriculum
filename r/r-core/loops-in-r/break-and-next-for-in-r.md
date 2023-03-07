---
author: Stefan-Stojanovic
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

# break & next in for Loops

---

## Content

You can use the `break` and `next` statements to control the flow of the `for` loop. The `break` statement breaks out of the loop and terminates it, while the `next` statement skips the rest of the current iteration and continues with the next one. 

Here is an example of a `for` loop that uses the `break` statement to exit the loop when the value of `i` is `5`:

```r
# Print the numbers from 1 to 10, but skip 5
for (i in 1:10) {
  if (i == 5) {
    break
  }
  print(i)
}
```

Here is an example of a `for` loop that uses the `next` statement to skip the iteration when the value of `i` is `even`:
```r
for (i in 1:10) {
  if (i %% 2 == 0) {
    next
  }
  print(i)
}
```

You can use the `break` and ``next`` statements together to create more complex loops. 

For example, you can use a `break` statement to exit the loop when a certain condition is met, and use a ``next`` statement to skip certain iterations.
```r
for (i in 1:10) {
  if (i == 5) {
    break
  }
  if (i %% 2 == 0) {
    next
  }
  print(i)
}
```


---
## Practice

What is the output ofthe following code?

```r
for (i in 1:10) {
  if (i == 5) {
    next
  }
  print(i)
}

# ???
```

- `1 2 3 4 6 7 8 9 10`
- `1 2 3 4 5 6 7 8 9 10`
- `1 2 3 4`
- `1 2 3 4 5`

---
## Revision

Complete the following code snippet to print the elements of the `fruits` vector:

```r
fruits <- c("apple", "banana", "cherry")
for (fruit in ???) {
  print(???)
}
```


- `fruits`
- `fruit`
- `banana`
- `vector`