---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  python.native-types-operations.10: 10
  python.identify-python-syntax.2: 10
aspects:
  - introduction
  - workout
  - deep
links:

  - '[more about exception handling](https://docs.python.org/3/tutorial/errors.html){website}'


---

# Exception Handling

---
## Content

If we have a **code snippet** that might rise some **exceptions**, there is a way to **handle** their occurrences: we need to wrap that *problematic* snippet into a `try` block.

After the `try` block we need to include an `except` statement followed by a code snippet, which should run if the error rises.

There are two other **optional** clauses available:
- `else` clause  which, when present, must follow all `except` clauses. It is useful for code that must be executed if the `try` clause does not raise an exception.
- `finally` clause which will execute no matter what, even if another line is being evaluated with a return statement.

Let's see what the syntax looks like:
```python
try:
  #Exception-prone code
except ExceptionI:
  #If ExceptionI is thrown,
  #then execute this block.
except ExceptionII:
  #If ExceptionII is thrown,
  #then execute this block.
else:
   #If there is no exception,
   #then execute this block.
finally:
   #Execute this snippet
   #no matter what
```

Useful information about the syntax:
- One `try` statement can have multiple `except` clauses.
- A generic `except` clause, which would handle any **exception**, can be defined:

```python
except Exception as e:
  print(e)
```

- After the `except` clauses, there comes the `else` statement whose code will execute **only** if there are no **exceptions**.

Suppose we want to **write** some data to a file that was opened in `r` mode:
```python
try:
  fh = open("testfile", "r")
  fh.write("I want to write this!")
except IOError:
  print("Error: can't write to the file")
else:
  print("Content was written to the file")
  fh.close()
finally:
 print("Got here!")

# Error: can't write to the file
# Got here!
```
This time, the program didn't stop.

---
## Practice

Can we define a single except clauses that will catch all types of exceptions?

???


* yes
* no
* depends on the exception

---
## Revision

What are the two optional clauses of the `try-except` statement?
???


* `else` and `finally`
* `if` and `return`
* `elif` and `break`

---
## Quiz

### Do you know how exception handling works?


// Here is an exception-handling block. Let's say a StopIteration is raised. How is it executed?
```python
try:
    # Exception-prone code here...
    # Raise StopIteration!
except StopIteration:
    # do A here...
except Exception as e:
    # do B here...
else:
    # do C here...
finally:
    # do D here...
```

- It will do A and D
- It will do A, B and D
- It will do A, B, C and D
- It will do B and D
