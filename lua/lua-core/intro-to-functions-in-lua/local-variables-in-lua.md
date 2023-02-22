---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Local Variables

---
## Content

The `local` keyword in Lua is used to declare a variable with a local scope. This means that the variable can only be accessed and modified within the block of code where it was defined. 

Using `local` is generally recommended as it can help prevent naming conflicts and makes code easier to read and maintain.

```lua
function foo()
  local x = 10
  print(x)  -- prints 10
end

foo()

-- x is not defined in the global scope
print(x)  -- error: attempt to call a nil value
```

In this example, `x` is defined as a local variable inside the function `foo()`. 

This means that `x` is only accessible within the scope of the `foo()` function and cannot be accessed outside of it. 

Attempting to access `x` outside of the function results in a runtime error because `x` is not defined in the global scope.

---
## Practice

Which keyword is used to declare a variable within a local scope?

???

- `local`
- `contained`
- `constrained`
- `global`


---
## Revision

Which of these statements is **true** about `local` variables in Lua?

A. Local variables are only visible within the block they are defined in.
B. Local variables are visible within the file they are defined in.
C. Local variables are visible to all files in the project.

Answer: ???.

- B
- A
- C