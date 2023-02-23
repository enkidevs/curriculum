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

# Array

---
## Content

In Lua, an `array` is a collection of elements of any data type, indexed by integer values starting at 1. 

An `array` can be created by initializing a `table` with a sequence of values, or by assigning values to specific indices. 

Unlike some other programming languages, Lua does not have a separate data type for arrays; instead, arrays are implemented as a special kind of `table`.

To create an `array` in Lua, you can either create a `table` and assign values to it using integer indices, or you can use the `array` constructor. Here's an example of creating an `array` using both methods:
```lua
-- Creating an array using a table with integer indices
my_array = {1, 2, 3, 4, 5}

-- Creating an array using the array constructor
my_other_array = {[1] = 10, [2] = 20, [3] = 30}
```

You can access the elements of an array using their index, like this:
```lua
-- Accessing elements of an array
print(my_array[1]) -- prints 1
print(my_other_array[3]) -- prints 30
```

Arrays in Lua can be useful for storing and manipulating data that is naturally indexed by integers, such as a sequence of user input or a collection of numerical data.

---
## Practice

Which of the following is a correct way to create an array in Lua?

```lua
-- a) 
my_array = (1, 2, 3, 4, 5)
-- b)
my_array = {1, 2, 3, 4, 5}
-- c)
my_array = {1; 2; 3; 4; 5}
```

???)

- b
- a
- c

---
## Revision

What is the result of the following code in Lua?

```lua
my_array = {[1] = 10, [2] = 20, [3] = 30}
print(my_array[2])
-- ???
```

- 20
- 10
- 30
- 2