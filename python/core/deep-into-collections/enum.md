---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

standards:
  python.native-types-operations.9: 10
aspects:
  - introduction
  - workout
  - deep

links:

  - '[More on Enum](https://docs.python.org/3/library/enum.html){website}'


---

# The `enum` collection

---
## Content

An **enum** (enumeration) is a set of constants that is meant to keep information organized. They are used mostly when a variable should take only a small set of possible values.

While there was no default `Enum` implementation before *Python 3.4*, you could've easily create one of your own. For newer versions, you can find the base class inside the `enum` package.

This is how to create an enum:
```python
from enum import Enum

class Shade(Enum):
  blue = 'denim'
  yellow = 'cream'
  green = 'olive'
  fuchsia = 4
```
Even though mixing the values defeats the purpose of having a list of constants you can use, it shows that you can have it both ways. You can then access the values contained through:
```python
# associated value
print(Shade(4))
print(Shade('cream'))
# Shade.fuchsia
# Shade.yellow

# associated name
print(Shade['blue'])
# Shade.blue

# enum entry
print(Shade.green)
# Shade.green

# name property of the entry
print(Shade.green.name)
# green

# value property of the entry
print(Shade.green.value)
print(Shade.fuchsia.value)
# olive
# 4
```
It is much easier now to paint a flower without having to think about the actual shade:
```python
class Flower:
  ...

lily = Flower()
lily.petals = Shade.fuchsia
lily.stem = Shade.green
lily.stamen = Shade.yellow

print(lily.stem.value)
# olive
```

`Enum`s are also **iterable** and **hashable**:
```python
for shade in Shade:
  print(shade)

flowers = dict()
flowers[Shade.fuchsia] = ['lily', 'tulip',
  'fuchsia']
print(flowers)
# {<Shade.fuchsia: 4>: ['lily', 'tulip',
#   'fuchsia']}

```

---
## Practice

Assuming that the same `Shade` enum is declared, what do you think the following snippet will print?
```python
print(type(Shade.blue))
???
print(Shade.blue is Shade.green)
???
```


* <enum 'Shade'>
* False
* <class 'Shade'>
* True
* <enum 'Shade.blue'>

---
## Revision

What will the following snippet output?
```python
from enum import Enum
class Car(Enum):
  bmw = 1
  Mercedes = 'S-class'
print(Car['bmw'])
???
```

* Car.bmw
* An error, it should be `Car('bmw')`
* An error, strings and ints cannot be mixed
* 1
* bmw
