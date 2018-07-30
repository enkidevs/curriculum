---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.native-types-operations.6: 10

links:

  - '[More on dictionaries](https://www.digitalocean.com/community/tutorials/understanding-dictionaries-in-python-3){website}'


---

# Review of dictionaries

---
## Content

Dictionaries are used to store data that is related in a way or another. What makes them different from other data types is that they provide a way to map *keys* ( such as an ID ) to *values* ( such as some information associated with that specific ID ).

We are not allowed to have two identical *keys* in the same dictionary and they must be of an **immutable data type** ( such as *strings*, *numbers* or *tuples* ), but you can map the same *values* to different keys.

Consider the following dictionary:
```
weather = {'London': 23, 'Barcelona': 28,
           'Bucharest': 35}
```

A dictionary is represented by a series of tuples ( key: value ) wrapped in curly braces ( {} ). Another property worth mentioning at this stage is that dictionaries are *unordered data types*, meaning that the order in which tuples are stored and displayed is arbitrary.

Being an unordered data type makes it impossible for elements to be accessed via some index. However, we can retrieve any stored value by referencing the related key:
```
print(weather['Barcelona'])

# Output: 28
```

Another way of accessing elements in a dictionary is using one of the following built-in functions:
```python

# 1. dict.keys()
print(weather.keys())
# dict.keys(['London', 'Barcelona',
#            'Bucharest'])

# 2. dict.values()
print(weather.values())
# dict.values([23, 28, 35])

# 3. dict.items()
print(weather.items())'
# dict_items([('London', 23),
#             ('Barcelona', 28),
#             ('Bucharest', 35)])
```

We can update a dictionary by updating an existing entry, adding a new entry or deleting an existing one:
```python

# Updating an existing entry:
weather['London'] = 30
print(weather['London'])
# Output: 30

# Adding a new entry
weather['Oslo'] = 15
print(weather['Oslo'])
# Output: 15

# Deleting an existing entry:
del weather['London']

# Deleting all elements in a dict:
weather.clear()

# Deleting the dictionary as a whole:
del weather
```

---
## Practice

Fill in the gaps such as the commented states of the `weather` dictionary stand true:

```
weather = ???

???['barcelona'] = 23
weather[???] = 30

print(weather)
# {'barcelona': 23, 'bucharest': 30}
??? weather['bucharest']

print(weather)
# {'barcelona': 23}

```


* `{}`
* `weather`
* `'bucharest'`
* `del`
* `weather()`
* `clear`
* `add`
* `'barcelona'`
* `weather['bucharest']`
* `del weather`

---
## Revision

What output will the following snippet generate:
```
marks = {'John': 8, 'Steve': 9.3,
         'Amy': 9.8}

marks.clear()
marks['David'] = 7
marks['Amber'] = 10

print(marks.keys())
```
???


* dict_keys(['Amber', 'David'])
* dict_keys(['David', 'Amber', 'Steve', 'John', 'Amy'])
* dict_keys(['Steve', 'John', 'Amy'])
* dict_keys(['Amber', 'David', 'John'])
