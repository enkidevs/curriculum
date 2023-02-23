---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - type-in-the-gap
    - fill-in-the-gap
  context: standalone

---

# Maps or Dictionaries

---
## Content

In Lua, a map is a table that associates keys with values. A map is also known as an associative array or dictionary. 

A table can be used as a map in Lua, where the keys can be any data type and the values can be any data type including other tables. 

You can use the square bracket notation to access the values associated with a key in a map.

Here's an example of a map that associates names with ages:
```lua
ages = {
  ["John"] = 28,
  ["Alice"] = 32,
  ["Bob"] = 45
}

print(ages["Alice"]) -- prints 32
```

Another way of writing the above is:
```lua
ages = {
  John = 28,
  Alice = 32,
  Bob = 45
}
print(ages["Alice"]) -- prints 32
```

In this example, `ages` is a map where the keys are strings representing names, and the values are integers representing ages. The `print` statement accesses the value associated with the key `"Alice"` in the `ages` map and prints it to the console.

Maps are a powerful data structure that can be used to represent a variety of information in a flexible and convenient way. They are often used to store configuration settings, handle user input, and more.

---
## Practice

Finish the code to create a dictionary called `people` with 2 key-value pairs, then print the value for the second key:
```lua
??? = {
  ["John"] = 30,
  ["Alice"] = 25,
}

print(???["???"]) 
-- 25
```

- people
- people
- Alice
- John


---
## Revision

Create a dictionary and output the value of the first key:
```lua
??? = {
  Simba = 'Lion',
  Jasper = 'Giraffe',
  Cougar = 'Mountain Lion'
}
print(animals["???"]) 
-- Lion
```

- animals
- Simba
- animal
- Lion
