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
  context: standalone
---

# Implementing Interfaces


---

## Content

Using the interface from the previous insight[1], we will create three types.

To create a type for an interface, you need to assign it the method name defined in the interface. In our case, `Action()`.

Here are three different types for the `Action()` method.

```go
type Sing struct {
}

func (s Sing) Action() string {
  return "La la la"
}

type Greeting struct {
}

func (g Greeting) Action() string {
  return "Hello! My name is Stefan"
}

type Age struct {
}

func (a Age) Action() string {
  return "I am 31 years old, and you?"
}
```

The first type is called `Sing` and has the action of "singing" `La la la`. The second type "greets" and the third specifies the age. 

In the `main()` function we can call all of these individually or we can create a slice with all types.

```go
func main() {
  // Slice called "humans" that holds the "Human" interface with the "Sing", "Greeting" and "Age" types.
  humans := []Human{Sing{}, Greeting {}, Age {}}
  // Loop that runs through the slice using the range keyword.
  for _, human := range humans {
    // Print of every action in the slice
    fmt.Println(human.Action())
  }
}
```

The outputs of the for loop are:

```plain-text
La la la
Hello! My name is Stefan
I am 31 years old, and you?
```


---

## Practice

What do you need to do to create a type for an interface?

???

- You need to assign it the method name defined in the interface.
- You need to create the type within the interface where the methods go.


---

## Revision

Given the interface:

```go
type Bird interface {
  Action() string
}
```

Create a type called `Fly` and a function from the same type that implements the interface method. The function should return a string "Flap Flap".

```go
type ??? struct {
}

func (???) ??? string {
  return "Flap Flap"
}
```

- Fly
- f Fly
- Action()
- fly f
- interface()
- method
- type


---

## Footnotes

[1:Previous Interface]

```go
type Human interface {
  Action() string
}
```
