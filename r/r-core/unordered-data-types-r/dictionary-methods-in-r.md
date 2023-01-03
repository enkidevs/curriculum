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

---

# Dictionary Methods in R

---

## Content

`R` has several functions for working with dictionaries. Here are some of the most commonly used ones:

Consider the following dictionary:
```r
square_numbers <- list(
  1: 1,
  2: 4,
  3: 9, 
  4: 16, 
  5: 25
)
```

`rm()` removes all items from the dictionary
```r
rm(square_numbers)

print(square_numbers)
# NULL
```

`duplicate()` returns a copy of the dictionary
```r
new_squares <- duplicate(square_numbers)

print(new_squares)
# 1: 1
# 2: 4
# 3: 9
# 4: 16
# 5: 25

```

names() returns the names of the elements in the dictionary as a character vector

```r
names(square_numbers)

print(names(square_numbers))
# "1" "2" "3" "4" "5"

```


---
## Practice

Complete the following code snippet to make a duplicate of the variable `my_house` called `new_house`:

```r
my_house <- list(bedrooms: 2, bathrooms: 2, garden: TRUE)

new_house <- ???.???
```

- my_house
- duplicate()
- clone()
- copy()
- duplicate

---
## Revision

What function can be used to return the names of the elements in a dictionary as a character vector?


```r
english_to_french <- list(apple: 'pomme', orange: 'orange')

english_to_french.???
# "orange" "apple"
```

- names()
- keys()
- contents()
- items()

---
## Footnotes

