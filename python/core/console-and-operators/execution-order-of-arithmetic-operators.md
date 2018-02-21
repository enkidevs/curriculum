# Execution Order of Arithmetic Operators
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

When creating commands using arithmetic operators in Python it's very important you understand the order in which your command will be executed.


What will be the result of the following equation?
```python
>>> 2 + 9 * 4 / 3 - 5
# this equation is equivalent with:
# 2 + ((9*4)/3) - 5
# Result:
# 9.0
```

To summarise, **division** and **multiplication** have the same priority. Also **summation** and **subtraction** have equal priority. However, **division** and **multiplication** have higher priority than **summation** and **subtraction**. Basically if we have an equation formed only of `*` and `/` we calculate them in the order they come (from left to right). The same thing happens with `-` and `+`. But if there is an equation containing a mix of them, then `*` and `/` have higher priority than `-` and `+` and they should be computed first.


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
