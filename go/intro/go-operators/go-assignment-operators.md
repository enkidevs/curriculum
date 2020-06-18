---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: how to

---

# Assignment Operators

---
## Content

Assignment operators are used to assign values to variables.

Unlike other operators, assignment operators work from right-to-left.

Assignment Operators:
```go
"="   - Assigns the values form the right side to the left variable
"+="  - Adds the right and left value and assigns it to the left variable
"-="  - Subtracts the left value from the right value and assigns it to the left variable
"*="  - Multiplies the right and left value and assigns it to the left variable
"/="  - Divides the right value from the left value and assigns it to the left variable
"%="  - Takes the modulo of the right and left value and assigns it to the left variable
```
 
Here is an example of all assignment operators.
```go
func main() {
var x = 15
var y = 4
var z = 0

z = x
fmt.Println("z = x ;  z = ", z)

z += y
fmt.Println("z += y ; z = ", z)

z -= y
fmt.Println("z -= y ; z = ", z)

y *= y
fmt.Println("y *= y ; y = ", y)

x /= 3
fmt.Println("x /= 3 ; x = ", x)

z %= x
fmt.Println("z %= x ; z = ", z)
}
```
 
Output:
```go
z = x ;  z =  15
z += y ; z =  19
z -= y ; z =  15
y *= y ; y =  16
x /= 3 ; x =  5
z %= x ; z =  0
```


---
## Practice

Use assignment operators to make the equations true.

```go
var x = 18
var y = 5
var z

y ??? y ; y = 25

y ??? x ; y = 7

x ??? y ; x = 25

x ??? y ; x = 18

z ??? y ; z = 7

x ??? z ; x = 2
```


* *=
* %=
* +=
* -=
* =
* /=