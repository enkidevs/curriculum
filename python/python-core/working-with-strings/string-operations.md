---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# String Operations


---

## Content

Strings are bits of text either defined with 'single' or "double" quotations. Python has a number of built-in methods which perform a variety of operations on strings.

First, we'll declare a string for method testing purposes:

```python
testString = 'operations'
```

The method `len` prints the length of a string:

```python
print(len(testString))
# 10
```

The `index` method returns the location of the first occurrence of a specified character:

```python
print(testString.index("r"))
# 3
```

> 💡 In Python (as well as other programming languages), indexing starts from `0`.

The `count` method returns the number of occurrences of a specified character:

```python
print(testString.count("o"))
# 2
```

The following example prints a `slice` of a string.

```python
print(testString[2:8])
# eratio
```

Notice how the result **starts at** index 2 but **finishes at** index 7. This is because the finish index is **non-inclusive**.

To split a string into two or more strings, use the `split` method as follows:

```python
testString = 'string operations'
words = testString.split(" ")
print(words)
# ['string', 'operations']
```


---

## Practice

Complete the code snippet to return the number of occurrences of the letter `p`:

```python
testString = 'laptop'
print(testString.???('p'))
```

- `count`
- `occur`
- `num`
- `show`


---

## Revision

Complete the code snippet to divide the string into two strings around the whitespace:

```python
testString = 'Revision Questions'

words = testString.???(' ')
```

- `split`
- `divide`
- `new`
