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

# Local Variables Example

---

## Content

Look at the example below.

```lua
function foo()
  local x = 10
  print(x)  -- prints 10
end

foo()

-- x is not defined in the global scope
print(x)  -- error: attempt to call a nil value
```

In this example, `x` is **defined as a local variable** inside the function `foo()`. 

This means that `x` is only accessible within the scope of the `foo()` function and **cannot be accessed outside of it**. 

*Attempting to access `x` outside of the function* results in a **runtime error** because `x` is not defined in the global scope.

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

Finish the code below such that `x` is declared as a local variable and equals 5.
```lua
function foo()
  ???
  print(x)  -- prints 10
end
```

- `local x = 5`
- `global x = 5`
- `x = 5`
- `local x`
