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

# Pointers


---

## Content

Pointers are used to store memory addresses of a particular value.

A pointer is represented with an asterisk (`*`), followed by a type.

The `*` is also used to "dereference" a pointers variable.

The `&` is used to find the address of a variable.

Let's say we have these two functions:

```go
// change x to 1
func changeValue(x int) {
  x = 1
}

// main function
func main() {
  x := 10
  changeValue(x)
  // x stays 10
  fmt.Println(x) // 10 
}
```

With the above method, we cannot change the value of `x`. However, if we used pointers we could.

```go
func changeValue(xPtr *int) {
  *xPtr = 1
}
func main() {
  x := 10
  changeValue(&x)
  // x becomes 1
  fmt.Println(x) // 1
}
```

Here are several ways you can use pointers in **Go**.

```go
func main() {
  a, b := 1, 15

  x := &a  // point to a
  // x becomes a
  fmt.Println(*x)  // read a through the pointer
  *x = 3  // set a through the pointer
  // a becomes 3
  fmt.Println(a)  // print a
  // 3

  x = &b  // point to b
  // x becomes b
  *x = *x * 2  // multiply b through the pointer
  // b = 15 * 2
  fmt.Println(b)  // print b
  // b = 30
}
```


---

## Practice

Which statement is false about pointers in **Go**?

???

- `Pointers don't exist in go.`
- `The * is used to reference a pointers variable.`
- `The * is used to dereference a pointers variable.`
- `The & is used to find the address of a variable.`


---

## Revision

The character used to reference and dereference a pointers variable is:

```plain-text
???
```

The character used to find the address of a variable:

```plain-text
???
```

- *
- &
