---
author: tommarshall
type: normal
category: must-know
inAlgoPool: false
---

# String Operations


---

## Content

Strings are bits of text either defined with 'single' or "double" quotations. Python has a number of build in methods which perform a variety of operations on strings.

First we'll declare a string for method testing purposes:

```plain-text
testString = 'operations'
```

The method `len` prints the length of a string:

```plain-text
print(len(testString))
# 10
```

The `index` method returns the location of the first occurence of a specified character:

```plain-text
print(testString.index("r"))
# 3
```

The `count` method returns the number of occurrences of a specified character:

```plain-text
print(testString.count("o"))
# 2
```

The following examples prints a `slice` of a string. It starts at index 2 and finishes at index 7, hence making it easier to do maths inside brackets.

```plain-text
print(testString[2:8])
# eratio
```

To split a string into two or more strings use the `split` method as follows:

```plain-text
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
