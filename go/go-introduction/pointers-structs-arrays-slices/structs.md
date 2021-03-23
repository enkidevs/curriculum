---
author: Stefan-Stojanovic
aspects:
  - workout
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

# Structs


---

## Content

Structs are collections of fields.

```go
package main

import "fmt"

type student struct {
  name string
  age int
  major string
}

func main() {
  fmt.Println(student{
    "Stefan",
    26, 
    "Computer Science"
  })
}
```

Struct fields are accessed using a dot (`.`).

```go
func main(){
  s := student{"Mark", 31, "Art"}
  s.age = 29
  fmt.Println(s.age)
  // 29
}
```

### Structs With Pointers

You can use struct pointers to access a structs field.

Pointing to a struct's field is similar to a regular pointer.

```go
func main() {
  s := student{"Mark", 31, "Art"}
  p := &s
  // p = pointer that points to our struct s
  p.major = "Statistics"
  // change major to "Statistics"
  fmt.Println(s)
  // {Mark 31 Statistics}
}
```

> 💡 When editing structs through a pointer, you don't have to use `(*p).major`. The language allows a shortcut like p.major.


---

## Practice

What are structs?

???

- Collections of fields.
- A different name for pointers.
- Collections of pointers.


---

## Revision

Structs are collections ???. Their fields can be accessed with a ???.

- of fields
- `.`
- of pointers
- `&`
