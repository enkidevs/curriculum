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

# Logical Operators


---

## Content

Just like relational operators, logical operators only evaluate to `true` or `false`.

There are a total of three logical operators:
  * `&&` (the `AND` condition) evaluates to `true` if all of the conditions evaluate to `true` 
  * `||` (the `OR` condition) evaluates to `true` if at least one condition evaluates to `true`
  * `!` (the `NOT` condition) evaluates to `true` if the condition evaluates to `false` and vice versa

Logical operators are commonly used in `if/if else` or `switch` statements.

```go
func main() {
  var isWeekend = true
  var hour = 10

  if (isWeekend) && (hour >= 10) && (hour <= 20){
    fmt.Println("We are open")
  } else {
    fmt.Println("We are closed")
  }
  // If isWeekend is true and it is after 10 and before 20 then we print "We are open"
  // If any one of the 3 conditions evaluates to false, the output is "We are closed" 


  if (hour < 10) || (hour > 20) || (isWeekend) {
    fmt.Println("Store is closed.")
  } else {
    fmt.Println("Store is open.")
	}
  // If any one of the 3 conditions evaluates to true we print "Store is closed"
  // If all 3 evaluate to false, we print "Store is open"


  if (!isWeekend) {
    fmt.Println("It's a work day")
  } else {
    fmt.Println("It's the weekend")
  }
  // Initially we set the value of isWeekend to true. If it is NOT the weekend we print, "It's a workday".
  // Else we print "It's the weekend"
}
```


---

## Practice

Which group of operators do `&&`, `||` and `!` fall into?

???

- Logical
- Relational


---

## Revision

Match the name with the operator.

```plain-text
AND - ???
OR  - ???
NOT - ???
```

- `&&`
- `||`
- `!`
- `&`
- `^^`
