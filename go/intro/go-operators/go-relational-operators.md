---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: how to

---

# Relational Operators

---
## Content

Relational operators are used to check if a condition is `true` or `false`.

There are a total of 6 relational operators in `GO`.
```go
"==" - Returns true if the values are equal, false otherwise
"!=" - Returns true if the values are NOT equal, false otherwise
">"  - Returns true if the value is greater, false otherwise
">=" - Returns true if the value is greater than or equal to, false otherwise
"<"  - Returns true if the value is smaller than, false otherwise
"<=" - Returns true if the value is smaller than or equal to, false otherwise
```
Here is an example of all 6 relational operators.
```go
func main() {
var x = 10
var y = 10

  fmt.Println("x == y ; ", x == y)  
  
  fmt.Println("x != y ; ", x != y)  
  
  fmt.Println("x > y  ; ", x > y)  
  
  fmt.Println("x >= y ; ", x >= y)  
  
  fmt.Println("y < x  ; ", y < x)

  fmt.Println("y <= x ; ", y <= x) 
}

```
The outputs are:
```golang
x == y ;  true
x != y ;  false
x > y  ;  false
x >= y ;  true
y < x  ;  false
y <= x ;  true
```

---
## Practice

Relational characters can ???

* only evaluate to true or false.
* evaluate to any number or boolean.

---
## Revision

Match the operator to its name.

```golang
>= - ???
== - ???
>  - ???
<= - ???
<  - ???
!= - ???
```

* Greater than or equal to
* Equal to
* Greater than
* Smaller than or equal to
* Smaller than
* Not equal to