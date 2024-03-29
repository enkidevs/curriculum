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

# Tables Can Store Functions! I

---
## Content

A useful technique when working with tables is to **assign functions as values to table keys**. 

This can be used to create methods for the table or to provide a namespace for related functions. When a *function is assigned to a table key*, it is **called a method of the table**.

Here's an example of defining a table with a method:
```lua
-- define a table with a method
my_table = {
  value = 0,
  increment = function(self)
    self.value = self.value + 1
  end
}
```

In this example, we define a table called `my_table` with a value called `value` and a method called `increment`. 

The `increment` method takes a single parameter `self`, which refers to the table object itself. When called, the method increments the `value` key of the table by 1.

---

## Practice

Which of the following is the correct way to assign a function to a table in Lua?

```lua
-- A)
my_table.my_function = function () 
  print("Hello World!") 
end

-- B)
my_table = function () 
  print("Hello World!") 
end

-- C)
function my_table.my_function () 
  print("Hello World!") 
end

-- D)
my_table = { 
  my_function = function () 
    print("Hello World!") 
  end 
}
```

???

- D)
- B)
- C)
- A)

---
## Revision

Fill in the code to create a table called `my_table` that has a function assigned as a value to the `increment` key. The function should increment a value when called.
```lua
??? = {
  ??? = ???(self)
    self.value = self.value + 1
  ???
}
```

- `my_table`
- `increment`
- `function`
- `end`