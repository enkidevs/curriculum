---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# String Formatting


---

## Content

Python provides a concise and efficient way to format strings using f-strings. An f-string is a string that is prefixed with the letter "f" or "F". Inside the string, you can include expressions that will be replaced with their values when the string is formatted.

Here is an example:
```python
app = 'Enki'
workout_number = 3
print(f'Learning Python with {app}, workout number {workout_number}.')
# Output:
# Learning Python with Enki, workout number 3.
```

In this example, the variables `app` and `workout_number` are included in the f-string by enclosing them in curly braces `{}`. The variables are then replaced with their values when the string is formatted.

F-strings also support expressions inside the curly braces, such as arithmetic operations and function calls. Here is an example that demonstrates how to use expressions in an f-string:
```python
x = 10
y = 5
print(f'The sum of {x} and {y} is {x + y}.')
# Output:
# The sum of 10 and 5 is 15.
```

To summarize, f-strings provide a more readable and efficient way to format strings compared to the older `%` operator or the `str.format()` method. By using f-strings, you can easily include variables and expressions inside strings, making your code more concise and easier to understand.

---

## Practice

Complete the code snippet to print the output:

```py
replace = 'Enki'

print(f'{???} is fun!')

# Enki is fun!
```

- `replace`
- `Enki`
- `'replace'`
- `print`


---

## Revision

Fill in the code for the outputs to be correct:

```python
x = 42
y = 3.14
z = "Hello"

print(f"What is the value of x? ???")
# What is the value of x? 42

print(f"??? is approximately equal to ???")
# y is approximately equal to 3.14

print(f"???, world!")
# Hello, world!
```

- `{x}`
- `y`
- `{y}`
- `{???}`
- `z`
