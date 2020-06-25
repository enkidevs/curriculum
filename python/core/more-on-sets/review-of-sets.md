---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.native-types-operations.5: 10

links:

  - '[More about sets](http://www.python-course.eu/python3_sets_frozensets.php){website}'


---

# Review of Sets

---
## Content

**Sets** can be used to carry out **mathematical** set operations like:  
- union
- intersection
- difference
- symmetric difference

Consider the following two sets:
```
x = {1,2,3,4,5}
y = {3,5,4,8,9}
```

The **Union** of these results in a set containing *all elements* from both sets. There are two ways to calculate the union of two sets:
- using `|` operator
- using `union()` method

Consider the following example:
```
print(x | y, '\n')
print(x.union(y), '\n')
print(y.union(x))


# Output:
# {1,2,3,4,5,8,9}
# {1,2,3,4,5,8,9}
# {1,2,3,4,5,8,9}
```

We define **Intersection** of two sets, as a resulting set that contains only elements that are *in both sets*. An Intersection is performed using:
- the `&` operator
- the `intersection()` method

Consider the following example:
```
print(x & y, '\n')
print(x.intersection(y), '\n')
print(y.intersection(x))

# Output:
# {3,4,5}
# {3,4,5}
# {3,4,5}
```

**Difference** of `x` and `y` (`x- y`), is the set of elements that are *only in `x` and not in `y`*. The Difference is performed using:
- `-` operator
- `difference()` method

Consider the following example:
```
print(x - y, '\n')
print(y.difference(x))

# Output:
# {1,2}
# {8,9}
```

**Symmetric difference** of `x` and `y` means all elements that are either in `x` or `y` but *not in both*.
Symmetric difference is performed using:
- `^` operator
- `symmetric_difference()` method

Consider the following example:
```
print(x ^ y, '\n')
print(y.symmetric_difference(x))

# Output:
# {1,2,8,9}
# {1,2,8,9}
```

---
## Practice

Is there any difference between the outputs of `x & y` and `y & x`?

???


* No
* Yes
* Depending on the sets

---
## Revision

Which operation is performed using `^` operator?

???


* `symmetric difference`
* `difference`
* `union`
