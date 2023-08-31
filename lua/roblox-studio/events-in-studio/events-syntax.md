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
The syntax for coding events into Roblox Studio can be considered just an add-on to coding events in Lua generally.

To start, always begin with a variable that holds the instance. Now, the format of every event generally looks like this. 
```lua
partVariable = game.Workspace.Part
partVariable.Event:Connect(Function()
end)
```
Event represents the specific event you'd like to apply and Function() represents the function you'd like to connect with the event. Now, unlike regular Lua code where you would connect functions and events through a colon, you must use :Connect(). 

Here's an example below using the Touched event.

```lua
iceVariable = game.Workspace.Ice  --event for an ice block
iceVariable.Touched:Connect(Slide() --slide would be a function to remove friction
end)
```
---
## Practice
Finish the code below if the event was called "Changed" and the function to be connected it was Alert()
```lua
alarmVariable = game.Workspace.Alarm
alarmVariable.???:Connect(???
end)
```
- Changed
- Alert()
- Touched
- Alert
- Change
---

## Revision
Finish the code below if the event was called "Changed" and the function to be connected it was Alert()
```lua
alarmVariable = game.Workspace.Alarm
alarmVariable.Changed:???(???
end)
```
- Connect
- Alert()
- Touched
- Alert
- Change