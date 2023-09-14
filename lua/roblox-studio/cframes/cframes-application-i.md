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

# Application of CFrames
---

## Content
You might be wondering why scripting CFrames are so important when we can add them manually. Well, CFrames can go from simple object movement to placing specific counters and effects above a specific player! This is the beauty of CFrames and how complicated it can get.

For now, let's use CFrames to *spin an object forever*. To do so, create a **while loop** and have the condition set to `true`. We'll not be changing this value.

Now, let's create an inner loop that will **hold the instructions that will move an object**. Use a **for loop** and have a variable called `i` change from one value to another.

Since we will be using orientation and degrees, we'll go from 1 to 360 

```lua
while true do
    for i = 1, 360 do
    end
end
```
---

## Practice

```lua
while true do
    for i = 1, 360 do
    end
end
```

In the example above, the reason why we set the condition to be `true` is ???

- keep the loop active by never changing the boolean value
- to declare to the system that the instructions are true
- to tell the system that they can run the code
- to connect it with another loop
---

## Revision
Finish the code such that the while loop runs forever
```lua
while ??? do
    ...
    ...
    ...
end
```
- true
- false
- infinite
- continue