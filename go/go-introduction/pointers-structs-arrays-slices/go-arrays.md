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
  context: standalone
---

# Arrays


---

## Content

Arrays are data structures that consist of a collection of elements. 

```go
// Empty array with 2 integers
var a [2]int
```

The above array is created to hold two `int` values.

The length of an array is a part of its type. Arrays have fixed sizes.

> 💡 The first element in an array starts with an index `0`. If an array has `10` elements, the first is at index `0` and the last is at index `9`

```go
// Empty array with 7 strings
var weekDays [7]string

// Populate each element with a value
weekDays[0] = "Monday"
weekDays[1] = "Tuesday"
weekDays[2] = "Wednesday"
weekDays[3] = "Thursday"
weekDays[4] = "Friday"
weekDays[5] = "Saturday"
weekDays[6] = "Sunday"

fmt.Println(weekDays)
// [Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
fmt.Println(weekDays[4])
// Friday
```

Here is an example of an empty array:

```go
var emptyArray [5]int
fmt.Println(emptyArray)
// [0 0 0 0 0]
```

As you can see in the example above, an empty integer array will have all of its values set to 0.

To populate an array as soon as you create it:

```go
weekDays := [7]string{
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
}
```

This is the same as adding elements one by one.


---

## Practice

What are arrays?

???

- Data structures that consist of a collection of elements.
- Elements that have different data types.


---

## Revision

Arrays can ???

- only be populated upon creation
- be populated upon creation or later on, depending on if they are constants or not
