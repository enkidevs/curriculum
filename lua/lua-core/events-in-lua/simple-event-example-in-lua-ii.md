---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Event Example

---
## Content

Here's an example code that demonstrates how to use events in Lua:

```lua
-- Create an event
local event = {}
```
In this example, we **define an event** called `event`.

In the code below, we **attach a function** called `handler` to it **using colon notation**. 

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

---

## Practice

Define function `pullback()` and trigger the event with an event called `slingshot`.

```lua
??? slingshot:???
-- Code that describes what the function does
end

???:pullback()
```

- `function`
- `pullback()`
- `slingshot`

---

## Revision

Define the function `flying()` and trigger the event with an event called `plane`.

```lua
function ???:flying()
-- Code that describes what the function does
???

plane:???
```

- `plane`
- `end`
- `flying()`