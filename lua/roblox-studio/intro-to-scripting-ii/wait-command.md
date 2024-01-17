---
author: junoocha
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# The Wait Command
---

## Content

When considering the functionality of some functions, you should come to realize that not everything should happen at once. 

We can use boolean and loops that activate when a certain condition is met to ensure multiple functions don't run at once.

**Time** is a good way to determine behaviour, especially in Roblox where time is often used to set off specific events. Hence, we introduce `wait()`.

```lua
wait()
--Without a parameter, wait() will cause the script to wait around 0.03 seconds before reading the next line.
wait(3)
--If there is a parameter, wait() will wait that many seconds before reading the next line. E.g. this will wait 3 seconds.
```

---

## Practice
```lua
print("Hello World")
wait(4)
print("Well, say hello back")
```
In the code above, the second print statement will occur after... ???

- 4 seconds have passed
- 4 minutes have passed
- 4 frames have passed
- 4 players join the game

---

## Revision

```lua
print("Hello World")
wait(5)
wait(7)
print("Well, say hello back")
```
In the code above, the second print statement will occur after... ???

- 12 seconds have passed
- 5 seconds have passed
- 7 seconds have passed
- 35 seconds have passed