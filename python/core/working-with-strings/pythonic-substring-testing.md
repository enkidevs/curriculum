---
author: Ricardo

levels:

  - basic

  - medium

type: normal

category: tip
aspects:
  - introduction
  - workout
standards:
  python.standard-library-data.3: 10


tags:

  - substring

  - in


---

# Pythonic substring testing

---
## Content

Perform a substring test in a pythonic fashion using the `in` operator:


```python
string = 'Hello world'
if 'Hello' in string:
  print 'Substring!'
```

Instead of:


```python
string = 'Hello world'
if string.find('Hello') != -1:
  print 'Success!'

```

---
## Practice

Complete the following code snippet such that it makes sense:
```
string = “Hey there”
??? ‘Hey’ ??? string:
  print “found it”
#found it
```

* `if`
* `in`
* `for`
* `is`
* `match`
* `else`
* `try`

---
## Revision

What keyword can be used in Python for substring testing?

???


* `in`
* `for`
* `is`
* `matches`
* `yield`
