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

# Switch

---
## Content

`Switch` statements are similar to `if-else` statements in `go`. 

Switch statements start with the keyword `switch` followed by a `short-hand notation` declaration of a value, the `condition`, and curly braces.

> 💡 You can omit either the `declaration` or the `condition`, but not both.

Inside the curly braces are "cases", each case is defined with keyword `case` followed by an `identifier`, `:` and some code after.

Unlike other languages, the `break` statements that go after every case are automatically provided, you don't need to write them. The `default` case is required.

If none of the cases work the switch will default to the `default` case.

```golang
import (
	"fmt"
	"time"
)

func main() {
	print := fmt.Print
	currentTime := time.Now()

	print("Today is ")
		
	switch weekday := currentTime.Weekday(); weekday {
	case 1:
		print("Monday")
	case 2:
		print("Tuesday")
	case 3:
		print("Wednesday")
	case 4:
		print("Thursday")
	case 5:
		print("Friday")	
	case 6:
		print("Saturdayday")
	case 0:
		print("Sundayday")
	default: 
		print("Can't get the current date")
	}
}

// Today is Tuesday
```


The above `switch` statement imports the `time` package and adds the current time to the `currentTime` variable.

Next, we take the day of the week and store it in `weekday` and add `weekday` as the condition. 

> 💡 The `time` package stores days of the week as numbers, 0 - Sunday, 6 - Saturday.

This is why we put our case identifiers as numbers.

> 💡 Unlike other languages, go only runs the selected case.

The switch starts from `case 1` checking if the weekday number equals the case identifier, if it does it stops there, if it doesn't it goes to the next.


Here is a simpler switch statement without a condition:
```golang
import (
	"fmt"
)
func main() {
	print := fmt.Print
		
	switch x:= 0; {
	case x > 0:
		print(x, " is positive.")
	case x < 0:
		print(x, " is negative.")
	default: 
		print(x, " is neither positive nor negative")
	}
}

// 0 is neither positive nor negative
```



---
## Practice

Finish the code to make the statement work.

```golang
func main() {
	??? := fmt.Print
		
	??? x:= 0; {
	??? x > 0:
		print(x, " is positive.")
	??? x < 0:
		print(x, " is negative.")
	???: 
		print(x, " is neither positive nor negative")
	}
}
```

* print
* switch
* case
* case
* default
* original
* if
* for