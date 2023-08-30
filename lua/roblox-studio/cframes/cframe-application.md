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
You might be wondering why scripting CFrames are so important when we can add them manually. Well, what if you wanted to create an object when an event happens? Or what if you want an object to move? This is the beauty of CFrames and how complicated it can get.

Let's create a loop that will spin an object forever. To do so, we can have a condition of a variable being true and never change it. 

Now, to make movement, lets insert a for loop into the while loop, and have a variable called i change from one value to another.
Since we will be using orientation and degrees, we'll go from 1 to 360 

```lua
while true do
    for i = 1, 360 do
    end
end
```
---

## Practice

---

## Revision
