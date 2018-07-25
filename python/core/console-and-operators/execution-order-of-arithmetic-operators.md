---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false
aspects:
  - introduction
standards:
  python.native-types-operations.2: 10


---

# Execution Order of Arithmetic Operators

---
## Content

When creating commands using arithmetic operators in Python, it's very important to understand the order in which the command will be executed.


What will be the result of the following expression?
```python
>>> 2 + 9 * 4 / 3 - 5
# this expression is equivalent to:
# 2 + ((9*4)/3) - 5
# Result:
# 9.0
```

To summarise, **division** and **multiplication** have the same priority. Also **summation** and **subtraction** have equal priority. However, **division** and **multiplication** have higher priority than **summation** and **subtraction**. Basically if we have an equation formed only of `*`, `/`, and/or `//`  we calculate them in the order they come (from left to right). The same thing happens with `-` and `+`. But if there is an equation containing a mix of them, then `*`, `/` and `//` have higher priority than `-` and `+` and will be computed first.


---
## Practice

What’s the output of the following command:

```
2 + 7 * 2 // 8
```
???

* `3`
* `3.0`
* `2.0`
* `1`

---
## Revision

What’s the output of the following command:

```
4 + 3 * 9 // 6
```
???

* `8`
* `8.0`
* `6.0`
* `5`
* `7.0`
