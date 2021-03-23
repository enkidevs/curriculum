---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Range


---

## Content

`range` is a reserved keyword used to iterate over elements in an array, slice, map, and other data structures.

### Range in an Array or a Slice

When ranging over an array or a slice, every iteration returns two values.

```go
func main() {
  names := []string{"John", "Michael", "Fiona"}
  for i, n := range names {
    fmt.Println(i, n)
  }
}

// 0 John
// 1 Michael
// 2 Fiona
```

Here's another example:

```go
var fibonacci = []int{0, 1, 1, 2, 3, 5, 8, 13}

func main() {
  for i, v := range fibonacci {
    fmt.Println(i, v)
  }
}

// 0 0
// 1 1
// 2 1
// 3 2
// 4 3
// 5 5
// 6 8
// 7 13
```

> 💡 The index or the value can be skipped by assigning `_` instead.

To skip the index:

```go
for _, v := range fibonacci {
  fmt.Println(v)
}

// 0
// 1
// 1
// 2
// 3
// 5
// 8
// 13
```

To skip the value:

```go
for i, _ := range fibonacci {
  fmt.Println(i)
}
// 0
// 1
// 2
// 3
// 4
// 5
// 6
// 7
```


---

## Practice

What is the reserved keyword used to iterate over elements in an `array`, `slice`, `map`, and other data structures.

```go
???
```

- range
- iterate
- span


---

## Revision

Finish the code to iterate over the elements of the Fibonacci array.

```go
var fibonacci = []int{0, 1, 1, 2, 3, 5, 8, 13, 21, 34}

??? i, f := ??? fibonacci {
  fmt.Println(i, f)
}
```

- for
- range
- fibonacci 
- span
