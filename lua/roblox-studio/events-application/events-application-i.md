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

# Using Events to Build a Lava Block
---

## Content
Now that we have the basics of events down, let's create a **Lava Block**, a common obstacle course that *instantly kills your avatar if any body part touches it*. 

With the current knowledge we have, we would **need to create a part**, **apply an event** to it and **attach a function** that kills the avatar. In studio, let's create a long and skinny block that's bright red. Name this block Lava.

The event we'll use is called `Touched`, which triggers anytime another part touches the part associated with the event.
```lua
--so far, the code should look like this
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
--remember that the parameters for Touched involves a part
--this can be found in the object browser description for Touched
end)
```
---

## Practice

The Touched event is an event that triggers when... ???

- Another part touches the part associated with the event
- The part associated with the event touches the baseplate
- The part associated with the event spawns in
- Once the moment the game starts

---

## Revision

The ??? event is an event that triggers when another part touches the part associated with the event.

- Touched
- TouchEnded
- Changed
- ChildRemoved
