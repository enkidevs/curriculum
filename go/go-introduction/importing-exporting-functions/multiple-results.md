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

Here's a function that adds two numbers, but has no return:
```go
func add(x, y int) {
	z := 0
	z = x + y
	fmt.Println(z)
}

// Callling the function:
func main() {
  add(2, 3)
}

// Output
// 5
```

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
