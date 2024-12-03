---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
---

# Function Parameters

---
## Content

Functions can take parameters, allowing you to pass data into them, just like adding ingredients to a recipe.

```kotlin
fun greetUser(name: String) {
    println("Hello, $name!")
}

// Call the function with a parameter
greetUser("Enki") // Outputs: Hello, Enki!
```

Here, the parameter name lets you personalize the greeting. When you call `greetUser("Enki")`, the function prints a message using the value `"Enki"`.

> 💡 Defining a parameter is like leaving a blank in a recipe for the ingredient you’ll use later. Calling the function is like filling in the blank with the actual ingredient. 🌟


---
## Practice

What is the purpose of parameters in a function?

???

- To pass data into the function
- To define the function's name
- To return data from the function


---
## Revision

In the function `fun greetUser(name: String)`, `name` is a ???.

???

- `parameter`
- `return value`
- `variable`


