---
author: Stefan-Stojanovic
aspects:
  - workout
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

# More on Slices


---

## Content

Slices have a length and a capacity.

The length of a slice is the number of elements it can have.

The capacity of a slice is the number of elements in the underlying array, counting from the first element of the slice.

Take this slice for instance:

```go
num := []int{2, 4, 8, 16, 32, 64}
// length of 6 and capacity of 6
```

You can slice it and decrease its length and capacity.

```go
num = num[:1]
fmt.Println(num)
// [2]

num = num[:5]
fmt.Println(num)
// [2 4 8 16 32]

num = num[3:]
fmt.Println(num)
// [16 32]
```

To check the length and capacity of a slice, you can use the `len()` and `cap()` expressions.

```go
num = num[:1]
fmt.Println(num)
// [2]
fmt.Println("length=", len(num))
// length= 1
fmt.Println("capacity=", cap(num))
// capacity= 6 

num = num[:5]
fmt.Println(num)
// [2 4 8 16 32]
fmt.Println("length=", len(num))
// length= 5
fmt.Println("capacity=", cap(num))
// capacity= 6

```


---

## Practice

Slices have ???.

- a length and capacity
- a length and width
- a width and capacity
- a capacity and no length


---

## Revision

This method is used to get the length of a slice:
```plain-text
???
```

While this one is used to get the capacity:
```plain-text
???
```

- len()
- cap()
- length()
- capacity()
