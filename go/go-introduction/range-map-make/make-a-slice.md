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

# Make a Slice


---

## Content

Slices can be created with a built-in function called `make`.

The `make` function allocates an array full of zeroes and returns a slice that refers to that array.

> 💡 The `make` function is used to create [dynamically-sized](https://www.enki.com/glossary/general/dynamically-sized) arrays.

```go
emptySlice := make([]int, 5)
fmt.Println("emptySlice ", emptySlice)
// len(emptySlice)=5
// emptySlice [0 0 0 0 0]
```

We've now created an empty slice that holds five integers. Another way of saying this is an integer slice of length `5`.

To add capacity to a slice, we need to include a third argument when calling `make`.

```go
emptySlice2 := make([]int, 0, 5)
// len(emptySlice2) = 0, cap(emptySlice2) = 5
fmt.Println("emptySlice2 ", emptySlice2)
// emptySlice2 []
```

You can also create a slice from the previously created slice:

```go
emptySlice3 := emptySlice[:3]
fmt.Println("emptySlice3 ", emptySlice3)
// emptySlice3 [0 0 0]
```

> 💡 A slice can contain any type, not just an array. It can also contain other slices.


---

## Practice

Slices can ???

- contain any type.
- only contain an array


---

## Revision

Create an integer slice called `slice` with a length of `0` and a capacity of `7`.

```go
??? := make(???, ???, ???)
```

- `slice` 
- `[]int`
- `0`
- `7`
- `()int`
