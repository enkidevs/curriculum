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
    - type-in-the-gap
  context: standalone

---

# Tables Can Store Functions! II

---
## Content

Next to creating tables with functions as values we can also **define new functions** and **add them to an existing table in a single line of code**.

This can be done through dot notation. Take a look at this example:
```lua
-- create a table to store some operations
local operations = {}

-- define a function to add two numbers
function operations.add(a, b)
  return a + b
end

-- define a function to subtract two numbers
function operations.subtract(a, b)
  return a - b
end

-- define a function to multiply two numbers
function operations.multiply(a, b)
  return a * b
end

-- define a function to divide two numbers
function operations.divide(a, b)
  return a / b
end
```

In this example, we create a table called `operations` and assign different functions to it for performing arithmetic operations like addition, subtraction, multiplication, and division **through dot notation**.

---
## Practice

Write a function named `createPlayer` that takes a `name` in the parameters. The function should return a table called `player` with the following keys: `name` (a string) and `score` (an integer). The table should also have a function named `incrementScore` that adds 1 to the `score` key.

```lua
function ???(???)
  local ??? = {
    name = name,
    score = 0,
    ??? = function(self)
      self.score = self.score + ???
    end
  }
  return ???
end
```

- `createPlayer`
- `name`
- `player`
- `incrementScore`
- `1`
- `player`

---
## Revision

Write a function named `createEmployee` that takes a `name` and a `salary` in its parameters. The function should return a table with the following keys: `name` (a string), `salary` (a number), and `getSalary` (a function that returns the `salary` key).

```lua
function ???(???, ???)
  local employee = {
    name = name,
    salary = salary,
    ??? = ???(self)
      return self.???
    end
  }
  return employee
end
```

- `createEmployee`
- `name`
- `salary`
- `getSalary`
- `function`
- `salary`