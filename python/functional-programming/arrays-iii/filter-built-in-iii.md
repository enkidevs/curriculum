---
author: lior-bd
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced Filtering

---

## Content


In many ways, the `filter` function produces very similar results to a for loop in an imperative style, but `filter`` is more legible, built-in and generally faster.

For example, we can easily combine it with *lambda functions*:
```python
ages = [25, 14, 16, 36]
print(list(filter(lambda x: x > 21, ages)))
# Result: [25, 36]
```

We can also use it with custom objects. Suppose we have a list of `user` objects that have a `isPaying` boolean value.

```python
print(list(filter(lambda user: user.isPaying, users)))
# Will print all the users that are paying
```

---

## Practice

Let's practice filtering through lists of more complex objects, such as tuples. `filter` lets us use a function to check multiple conditions in one sweep of the list. What is the result of the following code snippet's execution?

```python
customers =
  [('Jack', 'jack@corporate.com', True),
  ('Liz', 'liz@example.com', True),
  ('Sam', 'sam@corporate.com', True),
  ('Jess', 'jess@corporate.com', False)]

def special_function(customer):
  if len(customer[1]) > 0:
    return 'corporate.com' in customer[1]
    and customer[2]
  return False

print(filter(special_function, customers))

???
```

- The 3-tuples of customers where the associated boolean is True and the email includes the substring 'corporate.com'.
- The names of customers where their associated boolean is True and the email includes the substring 'corporate.com'.
- The 3-tuples of customers whose names are longer than zero characters.
- The 3-tuples of customers where their associated boolean is True or the email includes the substring 'corporate.com'.
- The 3-tuples of customers where their associated boolean is not True and the email does not include the substring 'corporate.com'.


---

## Revision

What is the printed result of the following code execution?

```python
numbers = [-3, -2, -1, 0, 1, 2, 3]
def mystery_function(element):
  return element < 0
print(filter(mystery_function, numbers))
```

???

- `[-3, -2, -1]`
- `[-1, -2, -3]`
- `[1, 2, 3]`

