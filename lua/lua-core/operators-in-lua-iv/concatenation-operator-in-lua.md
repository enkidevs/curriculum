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

# Concatenation

---
## Content


The **concatenation operator** is **represented by two dots** (`..`). It is used to concatenate[1] two strings into a new string.

Here's an example:
```lua
str1 = "Hello"
str2 = "world"
result = str1 .. " " .. str2 -- Concatenate two strings with a space in between
print(result) -- Output: "Hello world"
```

In this example, we concatenate the two strings `"Hello"` and `"world"` using the `..` operator and **store the result in a new string variable** `result`. 

The `" "` in between the two strings is also concatenated, resulting in the output `"Hello world"`.

---

## Practice

Finish the code to concatenate the `"Hello"` and `"world"` strings. Also, concatenate a space between the two words.
```lua
str1 = "Hello"
str2 = "world"
result = ??? ??? ??? ??? ???  
print(result)
-- "Hello world"
```
- `str1`
- `..`
- `" "`
- `..`
- `str2`

---

## Revision

Given the two strings `str` and `str2`. Which operator would you use to concatenate them together to match the output of the print?
```lua
str1 = "Hello"
str2 = "world"
result = str1 ??? " " ??? str2  
print(result)
-- "Hello world"
```

- `..`
- `..`
- `,,`
- `,,`
- `==`
- `==`

---

## Footnotes

[1: Concatenate]

To join two things together.