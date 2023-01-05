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
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# More about Dictionaries in R

---

## Content

In addition to accessing elements in a dictionary (or list) as shown in the previous insight, you can also add and remove elements.

To add an element to a list, you can use the `[[<-]]` or `[<-]` operators:
```r
fruits <- list(apple = "red", orange = "orange")
fruits[[4]] <- "green"
fruits["banana"] <- "yellow"

print(fruits)
# $apple
# [1] "red"
#
# $orange
# [1] "orange"
#
# $banana
# [1] "yellow"
#
# $`4`
# [1] "green"
```

You can also use the `$<-` operator to add an element with a specific key:
```r
fruits$kiwi <- "brown"

print(fruits)
# $apple
# [1] "red"
#
# $orange
# [1] "orange"
#
# $banana
# [1] "yellow"
#
# $`4`
# [1] "green"
#
# $kiwi
# [1] "brown"

```

To remove an element from a list, you can use the `-` operator:
```r
fruits <- list(apple = "red", orange = "orange", banana = "yellow")
fruits <- fruits[-2]

print(fruits)
# $apple
# [1] "red"
#
# $banana
# [1] "yellow"
```

You can also use the rm() function to remove an element by its key:
```r
fruits <- list(apple = "red", orange = "orange", banana = "yellow")
rm(fruits$orange)

print(fruits)
# $apple
# [1] "red"
#
# $banana
# [1] "yellow"
```


---
## Practice

Which of the following is **NOT** a way to add an element to a list in **R**?

???

- `list.key <- value`
- `list[[<-]]`
- `list[<-]`
- `list$<-`


---
## Revision

What function can be used to remove an element from a list by its key in **R**?

???

- `rm()`
- `remove()`
- `delete()`
- `erase()`