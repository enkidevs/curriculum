---
author: SebaRaba

tags:

  - introduction
  - workout

levels:

  - beginner

type: normal
aspects:
  - introduction
  - workout
category: must-know

standards:
  python.native-types-operations.5: 10

links:

  - '[more about sets](http://www.python-course.eu/python3_sets_frozensets.php){website}'


---

# Sets in Python

---
## Content

In **Python**, **sets** have four main characteristics:
- they are an **unordered collection** of elements;
- every elements is **unique** (no duplicates);
- and every element must be **immutable**;
- they can store elements of different **types**.

Even though elements stored in **sets** must be **immutable** the set itself is **mutable**.

There are two ways to create a **set**:
- by placing all items inside `{}`, separated by commas;
- or by using the **built-in function** `set()`.

There is no constraint regarding which **method** to use, but you have to know that an **empty set** cannot be created using the following **syntax**: `my_set = {}`. It is because **empty curly braces** create an **empty dictionary in Python**.

Consider the following example:

```
my_set = {1,2,3,4,5}

# OR

my_set = set([1,2,3,4,5])
```

**Sets** updating is done using two **methods**:
- `add()` -> adds one single element to the **set**;
- `update()` -> adds more elements at a time to the **set**;

Suppose we have the set created above:
```
my_set.add(9)
print(my_set)

# Output: {1,2,3,4,5,9}

my_set.update([2,3,10,7],{11,12})
print(my_set)

# Output: {1,2,3,4,5,9,10,7,11,12}
```

As you can see, if we try to add **duplicate values** to the **set**, it would not consider them.

**Sets** have two methods for removing items as well:
- `discard()` -> which removes an element if it exists and does nothing if it does not.
- `remove()` -> which does the same thing if the element exists, but would raise an error if it does not exist.

```
my_set.remove(1)
my_set.discard(5)
print(my_set)

# Output: {2,3,4,9,10,7,11,12}
```

---
## Practice

Which of the following pairs are valid set methods?

???


* `update()` and `add()`
* `update()` and `insert()`
* `insert()` and `add()`

---
## Revision

What happens when you use `remove()` on an element that doesn't exist in the set?

???


* An error will be thrown.
* Nothing.
* The element will be removed.
