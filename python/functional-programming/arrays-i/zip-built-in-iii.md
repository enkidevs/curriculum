---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Python 3.3 Documentation -
    zip](https://docs.python.org/3.3/library/functions.html#zip){website}
  - >-
    [Python
    zip()](https://www.programiz.com/python-programming/methods/built-in/zip){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Unzipping

---

## Content

The star operator `*` can be used with `zip` to do the opposite action -- unzip a list. This action takes an iterator of tuples and returns a tuple for each field in the tuples[1]. Unzipping has the syntax:

```python
zip(*zippedList)
```

where `(*zippedList)` denotes the one input zipped list of tuples preceded by the `*` operator. Below is an illustration of unzipping:

```python
a = ['a1', 'a2', 'a3', 'a4', 'a5']
b = ['b1', 'b2', 'b3', 'b4', 'b5']
c = ['c1', 'c2', 'c3', 'c4', 'c5']

result = zip(a, b, c)

x, y, z = zip(*result)
print(x)
print(y)
print(z)

# result:
# x = ('a1', 'a2', 'a3', 'a4', 'a5')
# y = ('b1', 'b2', 'b3', 'b4', 'b5')
# z = ('c1', 'c2', 'c3', 'c4', 'c5')
```

Note that when unzipping, Python returns **tuples** instead of **lists**:

```py
type(x)
# result:
# <type 'tuple'>
```



---

## Practice

We have three lists, `fnames`, `lnames`, `locations`, which are ordered so that each index represents the same person, i.e. `fnames[3]`, `lnames[3]` and `locations[3]` all refer to the same person. We want to create 2-tuples of the first and last name of each person and have these inside 2-tuples which match first+last name tuples with locations, such that the result looks like:

`[(('italo', 'calvino'), 'IT'),
  (('jean', 'micheal'), 'FR'),
  (('emily', 'rambert'), 'FR'),
  (('katya', 'sokolov'), 'RU')]`

Fill in the gaps in the code below to achieve this.

```python
locations = ['IT', 'FR', 'FR', 'RU']
fnames = ['italo', 'jean', 'emily', 'katya']
lnames = ['calvino', 'micheal', 'rambert', 'sokolov']

result = zip(???, ???)
result2 = zip(???, ???)
print(result2)
```

- `fnames`
- `lnames`
- `result`
- `locations`
- `result2`
- `names`


---

## Revision

What would be the output of applying the `zip` built-in function to these arguments?

```python
dates = ['9/16',
        '12/16',
        '2/17']
values = [200, 150, 122, 90, 220]

print(zip(dates, values))

???
```

- `[('9/16', 200), ('12/16', 150), ('2/17', 122)]`
- `{('9/16', 200), ('12/16', 150), ('2/17', 122)}`
- `[['9/16', 200], ['12/16', 150], ['2/17', 122]]`
- `[('9/16', 200), ('12/16', 150), ('2/17', 122), (0, 90), (0, 220)]`
- `[('9/16', 200), ('12/16', 150), ('2/17', 122), (90), (220)]`


---

## Footnotes

[1:Uneven length = loss of information]
*Any information discarded in the initial `zip` step because of input iterables being of uneven length is not recovered when we unzip the result again; the information has already been discarded at the `zip` step.*
 
