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

# Events Syntax
---

## Content
The syntax for coding events into Roblox Studio can be considered just an *add-on to coding events in Lua* generally.

To start, always begin with a variable that holds the instance. Now, the format of every event generally looks like this. 
```lua
partVariable = game.Workspace.Part
partVariable.Event:Connect(function()
end)
```
**Event** represents the specific event you'd like to apply and **function()** represents the function you'd like to connect with the event (***"function()" is included***, as you'll add the function after it). Now, unlike regular Lua code where you would connect functions and events through a colon, you **must use `:Connect()` .**

---
## Practice
Finish the code below if the event was called "Changed" and the function to be connected it was `alert()` .
```lua
alarmVariable = game.Workspace.Alarm
alarmVariable.???:Connect(???
  alert()
end)
```
- Changed
- function()
- Touched
- alert()
- Change
---

## Revision
Finish the code below if the event was called "Changed" and the function to be connected it was `alert()` .
```lua
alarmVariable = game.Workspace.Alarm
alarmVariable.Changed:???(???
  alert()
end)
```
- Connect
- function()
- Touched
- alert()
- Change