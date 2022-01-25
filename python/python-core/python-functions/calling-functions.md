---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Calling functions


---

## Content

To call a function in Python, you write the function's name followed by some parentheses `()`.

For example:

```python
# To define
def new_func():
  print ('Function time!')

# To call
new_func()

```

Gives the following output:

```plain-text
Function time!
```

The value passed into a function is called an argument. The variable that holds that value within the function is called a parameter.

In this example, variable `x` is defined in the function as a parameter:

```python
def func(x):
  ans = x * x
  print(ans)
```

To call this function, you must pass a value (i.e. an argument) into it, which will put that value into the `x` variable (i.e. parameter) inside the function.

You can pass a number directly or as a variable:

```python
# With a variable
num = 5
func(num)

# Directly
func(5)
```

In the `func(x)` example, the variable `x` will take the value of `num` or `5` depending on how we plugged it in. Either way, the output will be:

```plain-text
25
```


---

## Practice

Complete the code to define and call the `mean` function to get the arithmetic mean of `x` and `y`:

```python
x = 4
y = 2
??? mean(a, b):
  print((a + b) / 2)

???(???)
```

- def
- mean
- x, y
- (x, y)


---

## Revision

Complete the code snippet to define and call the function with the correct parameter:

```python
??? cube(x):
  res = x * x * x
  print (res)

num = 5
???(???)
```

- `def`
- `cube`
- `num`
- `x`
- `new`
- `obj`
- `var`
- `function`
 
