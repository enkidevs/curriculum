---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: must-know
standards:
  python.use-iteration-protocol.1: 10

links:

  - '[Python 3.3 Documentation - zip](https://docs.python.org/3.3/library/functions.html#zip){website}'
  - '[Python zip()](https://www.programiz.com/python-programming/methods/built-in/zip){website}'


---

# The `zip` Built-in Function

---
## Content

The `zip` built-in allows us to create tuples from multiple iterable collections of objects. Tuples are finite ordered lists of n elements, which is referred to as an n-tuple. In Python, tuples are represented with rounded brackets, such as: `('hello', 'good day', 'good morning')` which is a 3-tuple of greetings.

If we pass three lists into a `zip` function, it returns an iterator of tuples. If our three lists have 10 elements each, then the tuples returned by the iterator are 3-tuples, where the first tuple returned contains the first element of each input list. The second returned contains the second element of each input list, etc.

*If one of our lists is shorter than the other, then the iterator only has as many tuples as the shortest list, and will not continue further.[1]* If no parameters are passed, then an empty iterator is returned.

The syntax of `zip` is of the form:

```python
zip(zero_or_more_iterable)
```

where `zero_or_more_iterable` denotes zero or more iterable objects. To illustrate how zip works consider the code example below, where we input three lists of strings into `zip`.

```python
a = ['a1', 'a2', 'a3', 'a4', 'a5']
b = ['b1', 'b2', 'b3', 'b4', 'b5']
c = ['c1', 'c2', 'c3', 'c4', 'c5']

print(zip(a, b, c))

#result:
#[('a1', 'b1', 'c1'),
# ('a2', 'b2', 'c2'),
# ('a3', 'b3', 'c3'),
# ('a4', 'b4', 'c4'),
# ('a5', 'b5', 'c5')]
```

The star operator `*` can be used with `zip` to do the opposite action&mdash;to unzip a list. This action takes an iterator of tuples and returns a list for each field in the tuples.[2] Unzipping has the syntax:

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

#result:
# x = ('a1', 'a2', 'a3', 'a4', 'a5')
# y = ('b1', 'b2', 'b3', 'b4', 'b5')
# z = ('c1', 'c2', 'c3', 'c4', 'c5')
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
locations = ['IT',
             'FR',
             'FR',
             'RU']
fnames = ['italo',
          'jean',
          'emily',
          'katya']
lnames = ['calvino',
          'micheal',
          'rambert',
          'sokolov']

result = zip(???, ???)
result2 = zip(???, ???)
print(result2)
```


* `fnames`
* `lnames`
* `result`
* `locations`
* `result2`
* `names`

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


* `[('9/16', 200), ('12/16', 150), ('2/17', 122)]`
* `{('9/16', 200), ('12/16', 150), ('2/17', 122)}`
* `[['9/16', 200], ['12/16', 150], ['2/17', 122]]`
* `[('9/16', 200), ('12/16', 150), ('2/17', 122), (0, 90), (0, 220)]`
* `[('9/16', 200), ('12/16', 150), ('2/17', 122), (90), (220)]`

---
## Footnotes
[1:Different length inputs to `zip`]
*`zip` should only be used when you don’t care about trailing, unmatched values from the longer iterables, since the iterator stops after n iterations, where n is the size of the shortest input iterable. If those values are important, another variant of `zip` is built-in called  `itertools.zip_longest()` which automatically extends any shorter input lists with `fillvalue`, which by default is a `None` object.*

[2:Uneven length = loss of information]
*Obviously, any information discarded in the initial `zip` step because of input iterables being of uneven length is not recovered when we unzip the result again; the information has already been discarded at the `zip` step.*
