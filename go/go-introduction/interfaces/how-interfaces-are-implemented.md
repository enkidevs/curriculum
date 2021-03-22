---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How Are Interfaces Implemented?


---

## Content

The syntax for interfaces is:

```go
type INTERFACE_NAME interface {

// Method signatures

}
```

The `type INTERFACE_NAME` defines a type with the `INTERFACE_NAME`.

The `interface` keyword states that it is an interface.

Then, we have some method signatures in between the curly braces.

An interface should provide a method signature that has a `name`, `return type`, and an optional `input arguments`.

It is up to the `type` to declare the methods and implement them. This means that an interface is implemented when a type implements all of its methods.

> 💡 The types can be of any data type like `int`, `struct`, `float64`, etc.

Let's say we have this interface:

```go
type Human interface {
  Action() string
}
```

If we check the value and type of our interface, it would be `nil` (empty).

```go
func main() {
  var h Human
  fmt.Println("Current value of h is:", h)
  fmt.Printf("Type of h is: %T\n", h)
}
```

Outputs:

```plain-text
Current value of h is: <nil>
Type of h is: <nil>
```

This is because we have not declared any types that implement the `Action()` method.

> 💡 There is no `implementing`/`implements` keyword. The implementation is implicit[1].

We will dive into some examples in the next insight.


---

## Practice

What is the syntax for creating an interface?

```go
??? ??? ???{
// Method signatures
}
```

- type
- INTERFACE_NAME 
- interface 


---

## Footnotes

[1:Implicit vs Explicit]

Implicit means something is implied but not directly defined.

Explicit means something is clearly defined.
