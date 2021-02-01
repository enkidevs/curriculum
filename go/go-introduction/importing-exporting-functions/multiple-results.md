---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Functions Can Return None or Multiple Results


---

## Content

Function that returns three results:

```go
func avgOfTwoNum(num1, num2 int) (int, int, int) {

  var avg = (num1 + num2) / 2
  return num1, num2, avg
}

func main() {
  fmt.Println(avgOfTwoNum(11,33))
}

// Output
// 11 33 22
```

The above function gets two numbers inputted and then calculates the average of the two numbers and returns the inputted numbers as well as their average.

Functions can also return no results. A well-known function like that is the `main()` function.


---

## Practice

Functions in **Go** can return more than 1 result?

???

- True
- False


---

## Revision

What is a well-known function that has no return values?

???

- main()
- average()
- final()
