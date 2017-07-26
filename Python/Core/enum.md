# Enum
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More on Enum](https://docs.python.org/3/library/enum.html)'

---
## Content

**Enum** collection is available in the `enum` module, in Python 3.4 +. It represents an easier way of organising various information.

Consider the following *namedtuple*:
```
from collections import namedtuple

Animal = namedtuple('Animal', 'age breed')
lucky = Animal(age= 5, breed= 'dog')
```

Now, the breed field is of type string. This could be ambiguous as the user might enter each of the following 3 options referring to the same thing: 'Dog', 'dog', 'DOG'. Enum collections come in hand in this kind of situations:
```
from collections import namedtuple
from enum import Enum

class Breed(Enum):
  dog = 1
  pig = 2
  cat = 3
  puppy = 1
  Pig = 2
  CAT = 3

Animal = namedtuple('Animal', 'age breed')

rex = Animal(age= 3, breed= Breed.puppy)
splif = Animal(age= 2, breed= Breed.dog)

print(rex.breed == splif.breed)

# Output: TRUE
```

We defined a class called 'Breed' which we used to map strings that are written in a different way, but represent the same category. This way our code will be more readable and easier to understand for other programmers. It might not seem like a huge difference when we speak about 4 or 5 elements in the enumeration, but it can make a difference when we have bigger collections.

There are three ways to access elements in a enumeration:
```
print(Breed(1))
print(Breed['puppy'])
print(Breed.dog)

# Output:
# Breed.dog
# Breed.dog
# Breed.dog
```
---
## Practice

Considering the previous example, fill the gaps such that the output will go as follows: Breed.dog, Breed.cat, Breed.pig.
```
print(Breed(???))
print(Breed['???'])
print(Breed.???)
```

* 1
* CAT
* pig
* 2
* 3
* puppy

---
## Revision

Fill the gaps such that both expressions at the end will evaluate to 'True'?
```
from collections import namedtuple
from enum import ???

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
polo = Car(brand= Brands(4), engine= 1.4)
a4 = Car(brand= ???.audi, engine= 2)
s8 = Car(brand= Brands(1), engine= 6.2)

print(a4.brand == ???.brand)
print(polo.??? != a4.engine)
```

* Enum
* Enum
* 2
* brand
* Brand
* s8
* engine
* bmw
* Audi
* namedtuple
