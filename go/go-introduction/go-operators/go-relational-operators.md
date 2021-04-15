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

# Relational Operators


---

## Content

Relational operators are used to check if a condition is `true` or `false`.

There are a total of six relational operators in **Go**.

| Operator | Definition                                                             |
| -------- | ---------------------------------------------------------------------- |
| ==       | Returns true if the values are equal, false otherwise                  |
| !=       | Returns true if the values are NOT equal, false otherwise              |
| >        | Returns true if the value is greater, false otherwise                  |
| >=       | Returns true if the value is greater than or equal to, false otherwise |
| <        | Returns true if the value is smaller than, false otherwise             |
| <=       | Returns true if the value is smaller than or equal to, false otherwise |

Here is an example of all six relational operators.

```go
func main() {
var x = 10
var y = 10

  fmt.Println("x == y ; ", x == y)  
  // x == y ; true

  fmt.Println("x != y ; ", x != y)  
  // x != y ; false
  
  fmt.Println("x > y  ; ", x > y)  
  // x > y  ; false

  fmt.Println("x >= y ; ", x >= y)  
  // x >= y ; true

  fmt.Println("y < x  ; ", y < x)
  // y < x ; false

  fmt.Println("y <= x ; ", y <= x) 
  // y <= x ; true
}
```


---

## Practice

Relational operators can ???

- only evaluate to true or false.
- evaluate to any number or boolean.


---

## Revision

Add the operator that applies to each stement.

```go
???: Greater than or equal to
???: Equal to
???: Greater than
???: Smaller than or equal to
???: Smaller than
???: Not equal to
```


- `>=`
- `==`
- `>`
- `<=`
- `<`
- `!=`