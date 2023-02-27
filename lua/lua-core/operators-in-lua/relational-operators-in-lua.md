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

# Relational Operators

---
## Content


Relational operators are used to compare two values or expressions and return a Boolean value, either `true` or `false`. The common relational operators in Lua are:

|           Name           | Sign |
|:------------------------:|:----:|
|         equal to         |  ==  |
|       not equal to       |  ~=  |
|         less than        |   <  |
|       greater than       |   >  |
|   less than or equal to  |  <=  |
| greater than or equal to |  >=  |

Here's an example of using these operators:
```lua
a = 10
b = 5

print(a > b)  -- true 
print(a < b)  -- false
print(a == b) -- false
print(a ~= b) -- true 
print(a >= b) -- true
print(a <= b) -- false
```

In these examples, we compare the values of `a` and `b` using all relational operators, and print out the result.

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

- `<`
- `>`
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


- `>=`
- `~=`
- `<=`
