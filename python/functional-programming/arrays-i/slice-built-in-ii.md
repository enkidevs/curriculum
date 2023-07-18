---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Python
    slice()](https://www.programiz.com/python-programming/methods/built-in/slice){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The slice parameters

---

## Content


You can slice in two ways:
```python
slice(stop)
# or
slice(start, stop, step)
```
Where the different parameters are:
- **start** - the index where the slice starts. Defaults to 0
- **stop** - the index where the slice ends. The slice stops on the index `stop - 1`.
- **step** - the increment between each index of the slice. i.e., a `step` of 2 indexes every other element.

![slice-diagram](https://img.enkipro.com/5c14a0a3cc76bf5d721d41b8ce0adc59.png)

---

## Practice

What will be the output of the following code?

```python
ourList = ["Apple", "Banana", "Orange", "Blueberry"]
print(list(ourList[slice(0,3,2)]))
```
???

- `["Apple", "Orange"]`
- `["Apple", "Banana"]`
- `["Banana", "Blueberry"]`


---

## Revision

What will be the output of the following code?

```python
ourList = ["Apple", "Banana", "Orange", "Blueberry"]
print(list(ourList[slice(1,3,1)]))
```
???

- `["Banana", "Orange"]`
- `["Apple", "Banana"]`
- `["Apple", "Orange"]`
- `["Banana", "Blueberry"]`

