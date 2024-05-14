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

# Length Operator

---

## Content

In Lua, you can use the `#` operator to **find and access the length/number of characters of a string**.

For example, to find the length of a string `username`, you would write:
```lua
username = "Lua Enjoyer"
print(#username) --> 11
```
> **White spaces are included** in the length.

By having access to `username`'s length, the programmer can further work with the string length, such as making `username` receive inputs that **have a minimum and maximum character limit**.

---

## Practice

Fill in the gaps to find the length of the `str` string:
```lua
??? = "hello world"
print(???) --> 11
```

- `str`
- `#str`
- `string`
- `$string`


---

## Revision


```lua
string = "Counting Game!!"
print(#string) 
```
In the code above, ??? will be printed in the terminal when it runs.

- 15
- 14
- 12
- 13
