---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to

---

# Slices

---
## Content

Slices are [dynamically-sized](https://www.enki.com/glossary/general/dynamically-sized), flexible views of elements in an array.

Slices are created by selecting a low and high bound separated by a colon.

The low bound value is included while the high bound value is excluded.

```go
func main() {
  weekDays := [7]string{
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  }

  var weekend []string = weekDays[5:7]
  fmt.Println(weekend)
  // [Saturday Sunday]
}
```

To include the higher bound in a slice, the last index should be the same number as the length of the array.

```go
var someArray [5]int

var slice []int = someArray[0:4]
// includes values 
// at indexes 0, 1, 2, 3
var slice []int = someArray[0:5]
// includes values 
// at indexes 0, 1, 2, 3, 4
```

Slices are references to an array. Modifying a value in a slice will modify the referenced array.

```go
// Using the same example from above
fmt.Prinln(weekDays)
// [Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
fmt.Println(weekend)
// [Saturday Sunday]
weekend[0] = "Blah"
fmt.Println(weekend)
// [Blah Sunday]
fmt.Println(weekDays)
// [Monday Tuesday Wednesday Thursday Friday Blah Sunday]
```

If there are multiple slices from the same array, all slices will share the same changes.

> 💡 The low and high bound can be omitted. The defaults for the low and high bounds are 0 and the length of the slice respectively.

For the `weekDay` array, these work the same:
```go
weekDay[0:7]
weekDay[:7]
weekDay[0:]
weekDay[:]
```

---
## Practice

What are slices?

???

- Dynamically-sized, flexible views of elements in an array.
- Statically-sized, non-flexible views of elements in a string

---
## Revision

Fill in the code to create a slice called "seaBird" from the second value of the "birds" array.
```go
??? := []string{"Parrots","Penguins","Columbidae"}

var ??? []string = ???

fmt.Println(seaBird)
// [Penguins]
```

- birdsArray
- seaBird
- birdsArray[1:2]
- birdsArray[0:1]
- birdsArray[0:2]

