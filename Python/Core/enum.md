# Enum collections
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More on Enum](https://docs.python.org/3/library/enum.html)'

---
## Content

An **enum** is a list of constants that are meant to help with organizing information. It is available in the `enum` module, in Python 3.4+.

Consider the following *namedtuple*:
```
from collections import namedtuple

Dog = namedtuple('Dog', 'age breed')
lucky = Dog(age = 5, breed = 'pug')
```
Now, the breed field should accept a string. However, it could be confusing as any of the following options should be seen as valid: 'Pug', 'pug' or 'PUG'. Here, enums come in handy:
```python
from collections import namedtuple
from enum import Enum

class Breed(Enum):
  pug = 'pug'
  PUG = 'pug'
  Pug = 'pug'
  shiba = 'shiba'
  shiba_inu = 'shiba'
  beagle = 'beagle'
  bulldog = 'bulldog'

Dog = namedtuple('Dog', 'age breed')

rex = Dog(age=3, breed=Breed.pug)
splif = Dog(age=2, breed=Breed.PUG)

print(rex.breed == splif.breed)
# True

```

We defined a class called `Breed` which we used to map different strings to the same category. This way our code will be more readable and easier to understand for other programmers.

There are three ways to access elements in an enumeration:
```python
# by category
print(Breed('pug'))
print(Breed['shiba'])
# by attribute
print(Breed.shiba_inu)

# Breed.pug
# Breed.shiba
# Breed.shiba
```

The generic name for one category is the one that was first defined and that can be seen in the above example (`Breed.pug`, `Breed.shiba`).

---
## Revision

Fill the gaps such that both expressions at the end will evaluate to 'True':
```python
from collections import namedtuple
from enum import Enum

class Brands(???):
  Audi = 1
  Bmw = 2
  Mercedes = 3
  Volkswagen = 4
  audi = 1
  bmw = ???
  mercedes = 3
  volkswagen = 4

Car = namedtuple('Car', '??? engine')
polo = Car(brand= Brands(4), engine=1.4)
a4 = Car(brand= ???.audi, engine=2)
s8 = Car(brand= Brands(1), engine=6.2)

print(a4.brand == ???.brand)
print(polo.??? != a4.engine)
```

* Enum
* 2
* brand
* Brand
* s8
* engine
* bmw
* Audi
* namedtuple
