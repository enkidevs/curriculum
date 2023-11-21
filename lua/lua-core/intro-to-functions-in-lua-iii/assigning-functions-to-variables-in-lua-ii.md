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

# Calling Variables Holding Functions 

---
## Content

In the previous example[1], the `double` function is defined to *take a single parameter* and **return its doubled value**. Then, the function is assigned to a variable called `myFunction`. 

Now you can call the function using the variable name:
```lua
-- Call the function using the variable name
result = myFunction(4)
print(result) -- Output: 8
```

This will call the `double` function using the `myFunction` variable and pass in the number 4. The function will return the result of multiplying 4 by 2, which is 8. Finally, the `print` function is used to output the result to the console.

---
## Practice

What is the output of the following code?

```lua
function multiply(a, b)
  return a * b
end

calculation = multiply
result = calculation(3, 4)
print(result)
```

???

- `12`
- `3 * 4`
- `multiply(3, 4)`
- `function multiply(a, b)`


---
## Revision

What does this function do?

```lua
double = function(number)
  return number * 2
end

print(double(2))
```

- It outputs "4".
- It outputs "2".
- It doesn't output anything.
- It results in an error.

---

## Footnotes

[1: Previous Example]

```lua
-- Define a function that doubles a number
function double(number)
  return number * 2
end

-- Assign the function to a variable
myFunction = double
```