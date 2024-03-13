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

# Vararg Expression Example

---
## Content

For example, the following function definition **uses the vararg expression to accept any number of arguments** and print them to the console:

```lua
function printArgs(...) 
  for i, arg in ipairs({...}) do -- Grabs and assigns the input arguments with a number
    print(i, arg)  -- Prints the arguments and their assigned number
  end
end
```

When called with multiple arguments, the function will print each argument along with its corresponding index:
```lua
printArgs("foo", "bar", "baz")
-- Output:
-- 1  foo
-- 2  bar
-- 3  baz
```

In this example, the `...` expression in the function definition captures all the arguments passed to the function, and the `ipairs({...})` construct allows iterating over the arguments using a numeric index.

---

## Practice

What would be the output of the code below if the following arguments were inputted in the following: ("Mon", "Tues", "Wed")

```lua
function printArgs(...) 
  for i, arg in ipairs({...}) do -- Grabs and assigns the input arguments with a number
    print(i, arg)  -- Prints the arguments and their assigned number
  end
end
```
??? Mon
2 ???
??? ???

- 1
- Tues
- 3
- Wed
- 2
- 4
- Mon

---

## Revision

What would be the output of the code below if the following arguments were inputted in the following order: (4, 5, 6)

```lua
function printArgs(...) 
  for i, arg in ipairs({...}) do -- Grabs and assigns the input arguments with a number
    print(i, arg)  -- Prints the arguments and their assigned number
  end
end
```
??? ???
??? ???
??? ???

- 1
- 4
- 2
- 5
- 3
- 6
