---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false
aspects:
  - introduction
  - workout
standards:
  python.standard-library-data.5: 10
  python.standard-library-data.3: 10


---

# String Operations

---
## Content

Strings are bits of text either defined with 'single' or "double" quotations. Python has a number of build in methods which perform a variety of operations on strings.

First we'll declare a string for method testing purposes:
```python
str = 'operations'
```

The method `len` prints the length of a string:
```python
print(len(str))
# 10
```
The `index` method returns the location of the first occurence of a specified character:
```python
print(str.index("r"))
# 3
```

The `count` method returns the number of occurrences of a specified character:

```python
print(str.count("o"))
# 2
```
The following examples prints a `slice` of a string. It starts at index 2 and finishes at index 7, hence making it easier to do maths inside brackets.
```python
print(str[2:8])
# eratio
```
To split a string into two or more strings use the `split` method as follows:

```python
str = 'string operations'
words = str.split(" ")
print(words)
# ['string', 'operations']

```

---
## Practice

Complete the code snippet to return the number of occurrences of the letter `p`:
```python
str = 'laptop'
print(str.???('p'))
```

* `count`
* `occur`
* `num`
* `show`

---
## Revision

Complete the code snippet to divide the string into two strings around the whitespace:
```python
str = 'Revision Questions'

words = str.???(' ')
```

* `split`
* `divide`
* `new`
