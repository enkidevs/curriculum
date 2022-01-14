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

Python can use two different methods for string formatting.

The first, and older, method is similar to how the language C creates new and formatted strings.

The `%` operator formats a set of variables enclosed in a tuple, which is a fixed size list, alongside a format string which holds normal text with special symbols such as `%s` and `%d`. These are known as *argument specifiers*:

- `%s` is for a String
- `%d` is for Integers
- `%f` is for Floats

For instance, say you have some variables. This is how you would print them:

```python
app = 'Enki'
workout_number = 3
print('Learning Python with %s, workout number %d.' % (app, workout_number))
# Learning Python with Enki, workout number 3.
```

Although useful when working with a low number of variables, you can see how readability decreases as the number of variables used increases.

Since Python 2.6, a new method of string formatting has been introduced. You can now call the `str.format()` method on any string. The functionality is similar, but instead of `%s`, `%d`, or `%f`, you now have to use curly brackets `{}`.

```py
app = 'Enki'
workout_number = 3
a_string = 'Learning Python with {}, workout number {}.'.format(app, workout_number)

print(a_string)
# Output:
# Learning Python with Enki, workout number 3.
```

As you can see, the `format` method takes in the replacements as arguments and returns the formatted string. Another useful feature of this method is that you can decide which argument is replaced by using indexes:

```py
app = 'Enki'
workout_number = 3
another_string = 'Learning Python with {1}, workout number {0}.'.format(app, workout_number)

print(another_string)
# Output:
# Learning Python with 3, workout number Enki.
```


---

## Practice

Complete the code snippet to print the output:

```py
replace = 'Enki'

print('??? is fun!' % (replace))

'??? is fun!'.format(replace)

# Output in both cases:
# Enki is fun!
```

- %s
- {}
- %d
- {2}


---

## Revision

When you want to use two or more argument specifiers, what must you use in order to print them?

???

- A tuple
- A function
- A string
