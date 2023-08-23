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

# Explorer Interface

---

## Content

The services found in the explorer tab **represent the entire game**, broken into different parts. 

![explorer-interface](https://img.enkipro.com/dd9547d242979b80406d13b11ac7f5bf.png)

The most important and basic services are listed below:

### Workspace

Contains any elements that can be interacted with physically in the game.

### ServerScriptService

A *private* storage for your scripts[1], accessed through Studio only.

### ServerStorage 

A *private* storage for your objects, accessed through Studio only.

### ReplicatedStorage

A *public* storage for your objects, accessed by both Studio and the client.

> Why do you think there’s a separate storage for objects? Why is the ScriptService private to begin with? 

---

## Practice

??? is the service that serves as a public storage for your objects.
- 'ReplicatedStorage'
- 'ServerStorage'
- 'ServerScriptService'
- 'Workspace'


---
## Revision

??? is the service that serves as a private storage for your objects.
- 'ServerScriptService'
- 'ServerStorage'
- 'ReplicatedStorage'
- 'Workspace'

---

## Footnotes

[1: Scripts]

Scripts can be seen as the instructions written by the developer.