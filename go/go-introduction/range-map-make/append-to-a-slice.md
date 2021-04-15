---
author: Stefan-Stojanovic
type: normal
category: how-to
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

# Appending to a Slice


---

## Content

`append` is a reserved keyword for a built-in function that appends elements to the end of a slice.

Here is an empty slice:

```go
var s []int
fmt.Println(s)
// []
```

Here is how you append elements to a slice:

```go
s = append(s, 1, 2, 3, 4)
fmt.Println(s)
// [1 2 3 4]
```

The first value of append is always the slice name followed by what you want to add to the slice.

```go
append(slice_name, value1, value2, ...)
```

If you try to add more elements than the slice can have, a new array will automatically be created and the slice will point to that new array.


---

## Practice

What is `append` used for?

???

- To add elements at the end of a slice.
- Append doesn't exist in golang
- To add elements at the beginning of a slice.


---

## Revision

Add 4 elements to the `emptyS` slice.

```go
var emptyS []string


emptyS = ???(???, "value1", "value2", "value3", ???)
fmt.Println(emptyS)
// [value1 value2 value3 value4]

```

- append
- emptyS
- "value4"
- add
- slice
