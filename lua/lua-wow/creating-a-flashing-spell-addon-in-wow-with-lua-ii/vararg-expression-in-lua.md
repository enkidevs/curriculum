---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# varang Expression (...)

---
## Content

In Lua, three dots `...` is a syntactic construct called a vararg expression. 

It represents a variable number of arguments passed to a function. When used as a parameter in a function definition, it allows the function to accept any number of arguments. 

The vararg expression is often used in Lua's standard library functions, such as `table.concat` and `string.format`.

For example, the following function definition uses the vararg expression to accept any number of arguments and print them to the console:
```lua
function printArgs(...)
  for i, arg in ipairs({...}) do
    print(i, arg)
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