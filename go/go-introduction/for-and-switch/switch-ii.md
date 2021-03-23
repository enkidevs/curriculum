---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# More on switch Statements

---
## Content

In the previous insight, we had an example without a condition[1].

Now, let's take a look at an example that has a condition.

> 💡 Since we are using a lot of print statements, we will save the `fmt.Print()` command in a variable called `print`[2].

```go
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
      print("Saturday")
    case 0:
      print("Sunday")
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

> 💡 Unlike other languages, **Go** only runs the selected case.

The switch starts from `case 1`, checking if the weekday number is equal to the case identifier. If it does, it stops there. Otherwise, it goes to the next.

---
## Footnotes

[1:Previous Example]

```go
import (
  "fmt"
)
func main() {
  switch x:= 0; {
    case x > 0:
      fmt.Println(x, " is positive.")
    case x < 0:
      fmt.Println(x, " is negative.")
    default: 
      fmt.Print(x, " is neither positive nor negative")
    }
}

// 0 is neither positive nor negative
```

[2:Saving functions in variables]

Like in some other languages, in **Go** you can save a function into a variable.

The `fmt.Println` is a built-in function of the `fmt` package. For easier usage, we can save that imported function into a variable to use the same way.