# Review of Sets.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about sets](http://www.python-course.eu/python3_sets_frozensets.php)'

---
## Content

**Sets** can be used to carry out **mathematical** set operations like:
- **union**;
- **intersection**;
- **difference**;
- **symmetric difference**.

Consider the following two sets:

```
A = {1,2,3,4,5}
B = {3,5,4,8,9}
```

The **Union** of these results in a set containing all **elements** from both **sets**. There are two ways to calculate the **union** of two sets:
- using `|` operator;
- using `union()` method;

Consider the following example:
```
print(A | B, '\n')
print(A.union(B), '\n')
print(B.union(A))


# Output:
# {1,2,3,4,5,8,9}
# {1,2,3,4,5,8,9}
# {1,2,3,4,5,8,9}
```

We define **Intersection** of two sets, as a resulting **set** that contains only **elements** that are **in both sets**. **Intersection** is performed using:
- the `&` operator;
- the `intersection()` method;

Consider the following example:
```
print(A & B, '\n')
print(A.intersection(B), '\n')
print(B.intersection(A))

# Output:
# {3,4,5}
# {3,4,5}
# {3,4,5}
```

**Difference** of `A` and `B` (`A - B`), is the set of elements that are only in `A` and not in `B`. **Difference** is performed using:
- `-` operator;
- `difference()` method;

Consider the following example:
```
print(A - B, '\n')
print(B.difference(A))

# Output:
# {1,2}
# {8,9}
```

**Symmetric difference** of `A` and `B` means all **elements** that are in `A` and `B` but not in **common**.
**Symmetric difference** is performed using:
- `^` operator;
- `symmetric_difference()` method;

Consider the following example:
```
print(A ^ B, '\n')
print(B.symmetric_difference(A))

# Output:
# {1,2,8,9}
# {1,2,8,9}
```

---
## Practice

Is there any difference between `A & B` and `B & A`?
???

* No.
* Yes.
* Depends on the case.

---
## Revision

Which operation is performed using `^` operator ?
???

* `symmetric difference`
* `difference`
* `union`
