---
author: junoocha
type: normal
category: must-know
---

# Adding Instances Using Scripts I

---

## Content

Recall that instances are any objects in a game and can be added manually. But what if I want an instance to be created while the game is running? Like a chicken laying an egg? 

We can do this through code. To start, let's declare a new instance in a script using the `new()` function. 

```lua
Instance.new()
-- combining new() with Instance declares that we're creating a new instance.
```

Now within the parameters, we need to add the desired type of instance.

> The names of all instances can be found in the object browser.

```lua
Instance.new("Part")
-- including an instance that's a "part"
```

Run this script, and see what happens.
