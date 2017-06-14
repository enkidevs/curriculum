# Lists vs Dictionaries.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more information here](https://monjurulhabib.wordpress.com/2016/09/22/python-when-to-use-list-vs-tuple-vs-dictionary-vs-set-theory/)'

---
## Content

The **list** is the most versatile data structure available in **Python**. One interesting **feature** of the **list** is that you can store several elements of different **types** in the same list. Another difference from **dictionaries** is that elements of a **list** can be **ordered**.

Let's create a list:

```
my_list = ['list', 'second', 3, 4]
```

Another **difference** is in the way elements are accessed, **lists** use indices which start from `0`.

Consider the following example:

```
print(my_list[0], '\n', my_list[3])

# Output:
# list
# 4
```

**Dictionaries** represent unordered sequences of elements. Moreover, we can state that **dictionaries** are the **Python** implementation of an abstract data type called **associative array**. **Associative arrays** consist - like **dictionaries** of **(key, value) pairs**, such that each possible **key** appears at most **once** in the collection. The **values** of a dictionary can be any **Python data type**.

One difference we can highlight at this stage is that **elements** in a **list** can be ordered and the ones stored in **dictionary** can't be ordered.

Consider the following dictionary:

```
dict = {'Name': 'Seba',
        'Age': 21,
        'Year': 'Second'}
```

Elements stored in **dictionaries** are accessed using their **key** value:

```
print(dict[Name], '\n', dict[Year])

# Output:
# Seba
# Second
```

Because elements are accessed via their **indices**, this makes the operation of **retrieving** an element from the **lists** of complexity `O(n)`, whilst using **dictionaries's keys** the complexity adds up to `O(1)`.

---
## Practice

What complexity is required for a lookup on a list?
???

* `O(n)`
* `O(1)`
* `O(n^2)`

---
## Revision

What do we use to search for an element in a dictionary?
???

* keys
* indices
* we search using the exact element.
