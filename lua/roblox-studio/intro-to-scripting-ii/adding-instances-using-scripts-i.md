---
author: junoocha
type: normal
category: must-know
---

# Adding Instances Using Scripts
---

## Content
Recall that instances are any objects in a game and can be added manually. But what if I want an instance to be created while the game is running? Like a chicken laying an egg? Or a platform that appears, then disappears?

We can do this through code. To start, let's declare a new instance in a script. 

```lua
Instance.new()
--combining new() with Instance declares that we're creating a new instance
```
Within the parameters, we need to add the specific type of instance we want.
> The name of all instances can be found in the object browser.
```lua
Instance.new("Part")
```
Run this script, and see what happens.
