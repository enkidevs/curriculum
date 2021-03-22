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

# Map


---

## Content

`map` is a reserved keyword used to create a "map".

Maps are data types used to lookup, retrieve, and delete data based on provided keys. They are sometimes referred to as hashes, dicts, or associative arrays.

They are 

An empty map is created with the `make` keyword:

```go
// Syntax:
make(map[key-type]val-type)

// Example:
myMap := make(map[string]int)
```

The `make` function returns an initialized map ready to use.

Here is a program that creates a map from the `Class` struct containing three college classes.

```go
package main

import "fmt"

// Struct called Class with 3 classes
type Class struct {
  Math, English, Physics string
}

// Create a map variable called "g" from "Class" struct
var g map[string]Class

func main() {
// make the map
g = make(map[string]Class)

// Add values for each subject
g["Grades"] = Class{
  "A", "A", "B",
}

fmt.Println(g["Grades"])
  // {A A B}
}
```

You can also add key-value pairs individually to an empty map:

```go
package main

import "fmt"

func main() {

  m := make(map[string]string)

  m["Mathematics"] = "B"
  m["English"] = "C"
  m["Physics"] = "A"

  fmt.Println("map:", m)
  // map: map[English:C Mathematics:B Physics:A]
}
```

The `delete` function can be used to remove key/value pairs from a given map.

```go
delete(m, "English")
fmt.Println("map:", m)
// map: map[Mathematics:B Physics:A]
```

The `len` function can be used to check the length of a map.

```go
fmt.Println("len: ", len(m))
// len: 2
```


---

## Practice

Complete the map syntax code:

```go
make(???[???]???)
```

- map
- key-type
- val-type
- map-type
- key
- val


---

## Revision

Here is a sample map with 3 key-value pairs.

```go
  dogMap := make(map[string]string)

  dogMap["1"] = "Rottweiler"
  dogMap["2"] = "Dachshund"
  dogMap["3"] = "Labrador Retriever"

  fmt.Println(dogMap)
// map[1:Rottweiler 2:Dachshund 3:Labrador Retriever]
```

Remove the third key-value pair from the `dogMap` map.

```go
  ???(dogMap, "???")
  fmt.Println("map:", ???)
// 
```

- delete
- 3
- dogMap
- "Labrador Retriever"
- remove
