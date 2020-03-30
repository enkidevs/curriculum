---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - new
  - workout

type: normal

category: how to

---

# Functions can return none or multiple results

---
## Content

Function that returns 3 results:

```go
func avgOfTwoNum(num1,num2 int) (int,int, int) {

	var avg = (num1 + num2) / 2
	return num1, num2, avg
}

func main() {
	fmt.Println(avgOfTwoNum(11,34))
}

// Output
// 11 33 22
```
The above function gets 2 numbers inputed and then calculates the average of the 2 numbers and returns the inputed 2 numbers as well as their average.

Functions can also returno no results. A well known function like that is the `main()` function.

---
## Revision

Can functions in `GO` return 0 or more than 1 result?

???

* Yes
* No
