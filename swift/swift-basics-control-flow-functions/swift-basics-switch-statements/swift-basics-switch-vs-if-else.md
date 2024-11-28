---
author: nemanjaenki

category: how-to

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



links:


---

# Switch vs. If-Else

---
## Content

Switch statements offer a clearer way to handle multiple conditions compared to `if-else` chains.

```swift
// Using else-if
if weather == "sunny" {
    print("Go for a walk!")
} else if weather == "rainy" {
    print("Stay inside.")
} else if weather == "cloudy" {
    print("Take an umbrella.")
} else {
    print("Check the weather app!")
}
```
```swift
// Using switch
switch weather {
  case "sunny":
    print("Go for a walk!")
  case "rainy":
    print("Stay inside.")
  case "cloudy":
    print("Take an umbrella.")
  default:
    print("Check the weather app!")
}
```

There are a lot less characters in the `switch` code which means your brain has to do less work to follow along.

---
## Practice

What is one major advantage of using a switch statement over an else-if chain?

???

- switch statements handle multiple conditions with less repetition.
- switch statements can only handle numbers.
- switch statements are less readable than else-if.
- switch statements run faster in all cases.



---
## Revision

What will be printed if `weather` is "snowy"?

```swift
switch weather {
case "sunny":
    print("Go for a walk!")
case "rainy":
    print("Stay indoors and read a book.")
case "snowy":
    print("Build a snowman!")
default:
    print("Check the weather forecast.")
}
```

???

- "Build a snowman!"
- "Check the weather forecast."


---
## Footnotes


