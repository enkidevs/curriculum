---
author: Caleb-Cha
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

# Variables in Lua Review
---

## Content

Variables are an important aspect of Roblox Studio, as it allows quicker access to objects through referencering. Before understanding how variables give us this freedom, we will review how to create variables very briefly. 

> Again, there are no changes from Lua code regarding variables, but it is important to have a strong understanding of variables. 

```lua
--variables names should be declared by typing a name for the variable, followed by an equal sign.
--though I only use letters here as variable names, it's suggested to use variable names to organize your code.

a = "Yes, I am string." --variables can hold strings
b = 1 --variables can hold integers
c = true --variables can hold boolean values
d = b + 2 --variables can also hold calculations

--of course, the values these variables hold can be printed.

print(a)
--Output: Yes, I am string.
print(b)
--Output: 1
print(c)
--Output: true
print(d)
--Output: 3
```

---

## Practice

In the code below, the value that variable "matchTotal" holds is ???

```lua
matchBoxMatches = 30
matchBoxes = 3
matchTotal = matchBoxMatches * matchBoxes
```

- 90
- 30
- 3
- 33

---

## Revision

In the code below, the value that variable "matchTotal" holds is ???

```lua
matchBoxMatches = 50
matchBoxes = 4
matchTotal = matchBoxMatches * matchBoxes
```

- 200
- 50
- 4
- 54