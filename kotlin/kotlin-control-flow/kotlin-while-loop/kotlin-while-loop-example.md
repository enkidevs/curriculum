---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# While Loop Example

---
## Content

The `while` loop condition doesn't have to be a count.

It can be any condition that needs to be checked over and over until it's no longer true.

For example, here's a loop of you checking your phone for messages:

```kotlin
var didReceiveMessage = true
while (didReceiveMessage) {
    println("Checking for messages...")
    if (messageArrived()) {
        didReceiveMessage = false
        println("Message received!")
    }
}
```

This loop will print the message "Checking for messages..." over and over until `messageArrived()` returns `true`.

When it does, it will set `didReceiveMessage` to `false`, which will stop the loop.


---
## Practice

Lets print "still running" over and over until the user types in "done".

Pick the correct code to do this:

```kotlin
// A
while (userInput != "done") {
    println("still running")
}

// B
while (userInput != "done") {
    userInput = readLine() ?: ""
}
println("still running")

// C
while (userInput != "done") {
    println("still running")
    userInput = readLine() ?: ""
}
```

- C
- A 
- B

---
## Revision

Finish the `while` loop to print "still running" over and over until the user types in "done".

```kotlin
while (???) {
    println("still running")
    ???
}
```

- `userInput != "done"`
- `userInput = readLine() ?: ""`
- `readLine() ?: ""`
- `true`
- `userInput == readLine() ?: ""`