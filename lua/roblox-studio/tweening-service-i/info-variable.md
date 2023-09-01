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

# Info Variable

---

## Content
The **Info variable** is a local variable that contains **data regarding the tween animation**.

The syntax for this variable is very specific. Set the variable equal to `TweenInfo.new()`, and the `new()` parameter must hold these types of information: 

```lua
(time: number, easingStyle: EasingStyle, easingDirection: EasingDirection, repeatCount: number, reverses: boolean, delayTime: number)  
-- the effects of the tweening service : the type of data 
```
Here's an example:
```lua
local info = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, -1, true, 0)  
```
> Similarly to PropertyTable, info is a changeable name.

> Easing will be touched upon in the next workout

---

## Practice

```lua
EasingStyle --option 1
EasingDirection --option 2
Time --option 3
EasingTime --option 4
```
Of the 4 options, ??? is not a component of the TweenInfo.new() parameter.
- option 4
- option 1
- option 2
- option 3

---

## Revision

```lua
Reverses --option 1
DelayTime --option 2
Time --option 3
TimeDelay--option 4
```
Of the 4 options, ??? is not a component of the TweenInfo.new() parameter.
- option 4
- option 1
- option 2
- option 3