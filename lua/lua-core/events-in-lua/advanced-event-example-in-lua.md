---
author: Stefan-Stojanovic
category: must-know
type: normal
---

# Advanced Event Example

---
## Content

Here's a more advanced example of using events in Lua. Take a look at the code below before continuing:

```lua
-- Create a function to handle custom events
local function onCustomEvent(eventType, eventData)
  print("Custom event received: " .. eventType .. ", data: " .. eventData)
end

-- Register the custom event handler function
eventManager:RegisterForEvent("OnCustomEvent", onCustomEvent)
```

We first **create a couple of event handler functions[1]** for handling keyboard and mouse events. We then **register these functions with the system event manager** using the `RegisterForEvent` method[2].

```lua
-- Trigger a custom event
eventManager:TriggerEvent("OnCustomEvent", "test", "data")
```

Finally, we **trigger a custom event** using the `TriggerEvent` method and **pass some test data to it**.

This is just a simple example of how events can be used in Lua to create interactive and responsive applications. The flexibility of the event system allows developers to create custom events and event handlers for a wide variety of use cases.

---

## Footnotes

[1: Additional Event Handler Functions]

Here are additional events handler functions that would be used in this example.

```lua
-- Create an event handler function
local function onKeyPress(key)
  print("Key pressed: " .. key)
end

-- Register the event handler function with the system event manager
eventManager:RegisterForEvent("OnKeyDown", onKeyPress)

-- Create a function to handle mouse clicks
local function onMouseClick(button, x, y)
  print("Mouse clicked: " .. button .. " at (" .. x .. ", " .. y .. ")")
end

-- Register the mouse click event handler function
eventManager:RegisterForEvent("OnMouseClick", onMouseClick)
```

[2: RegisterForEvent Method]

A method used to associate the event in quotation marks with the event type. E.g. "OnCustomEvent" is now associated with the `OnCustomEvent` function and will call the function when triggered.