---
author: Stefan-Stojanovic
category: must-know
type: normal
---

# Event Example

---
## Content

Here's an example code that demonstrates how to use events in Lua:

```lua
-- Create an event
local event = {}
```
In this example, we **define an event** called `event` and **attach a function** called `handler` to it **using colon notation**. 

```lua
-- Define a function to be called when the event is triggered
function event:handler()
  print("Event triggered!")
end

-- Trigger the event
event:handler()
```
When we call `event:handler()`, the handler function is executed, which executes the print statement.

Events **can be used to trigger more complex behavior** such as *updating a user interface*, *playing a sound effect*, or *saving data* to a file.