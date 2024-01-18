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

# Equal and Not-Equal Operators

---
## Content


Relational operators are used to **compare two values or expressions** and **return a Boolean value**, either `true` or `false`. 

These are the Equal and Not-Equal Operators in Lua: 

|           Name           | Sign |
|:------------------------:|:----:|
|         equal to         |  ==  |
|       not equal to       |  ~=  |

They compare whether the **two values are equal** to each other or not.

Here's an example:
```lua
a = 10
b = 5
print(a == b) -- false
print(a ~= b) -- true 
```

---
## Practice

Add the appropriate relational operator to each equation to match the output comment:
```lua
a = 5
b = 10
c = 10

print(a ??? b)  -- true 
print(a ??? b)  -- false
print(c ??? b) -- true
```

- `~=`
- `==`
- `==`


---

## Revision

Add the appropriate relational operator to each equation to match the output comment:
```lua
a = 5
b = 10
c = 10

print(a ??? b)  -- false
print(c ??? b) -- false
print(a ??? b)  -- true 
```


- `==`
- `~=`
- `~=`
