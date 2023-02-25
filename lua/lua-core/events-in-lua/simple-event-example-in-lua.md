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

-- Define a function to be called when the event is triggered
function event:handler()
  print("Event triggered!")
end

-- Trigger the event
event:handler()
```

In this example, we define an event called `event` and attach a function called `handler` to it. 

When we call `event:handler()`, the handler function is executed, which prints out the message `"Event triggered!"` to the console.

This is a simple example, but events can be used to trigger more complex behavior such as updating a user interface, playing a sound effect, or saving data to a file.