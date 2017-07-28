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

**Enum** collection is available in the `enum` module, in Python 3.4 +. It represents a list of constants that are ment to help with organizing information.

Consider the following *namedtuple*:
```
from collections import namedtuple

Animal = namedtuple('Animal', 'age breed')
lucky = Animal(age= 5, breed= 'dog')
```

Now, the breed field is of type string. This could be ambiguous as the user might enter any of the following 3 options, which mean the same thing: 'Dog', 'dog', 'DOG'. Enum collections come in hand in this kind of situations:
```
from collections import namedtuple
from enum import Enum

class Breed(Enum):
  dog = 1
  puppy = 1
  pig = 2
  Pig = 2
  CAT = 3
  cat = 3

Animal = namedtuple('Animal', 'age breed')

rex = Animal(age=3, breed= Breed.puppy)
splif = Animal(age=2, breed= Breed.dog)

print(rex.breed == splif.breed)

# Output: TRUE
```

We defined a class called 'Breed' which we used to map strings that are written in a different way, but fall into the same category. This way our code will be more readable and easier to understand for other programmers.

There are three ways to access elements in an enumeration:
```
print(Breed(1))
print(Breed['puppy'])
print(Breed.dog)

# Output:
# Breed.dog
# Breed.dog
# Breed.dog
```

The generic name for one category is the one that was first defined. We can see from the above example that it doesn't matter which way we access the dog *constants* in, the optut will always be the first one defined ( 'dog' ).

---
## Practice

Considering the following example, fill the gaps such that the output will go as follows: WeekDays.Monday, WeekDays.Tuesday, WeekDays.Wednesday:
```
class WeekDays(Enum):
  Monday = 1
  modnay = 1
  Tuesday = 2
  tuesday = 2
  Wednesday = 3
  wednesday = 3
  Thursday = 4
  thursday = 4
  Friday = 5
  firday = 5


print(WeekDays.???)
print(WeekDays['???'])
print(WeekDays(???))

```

* 1
* CAT
* pig
* 2
* 3
* puppy

---
## Revision

Fill the gaps such that both expressions at the end will evaluate to 'True':
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
polo = Car(brand= Brands(4), engine=1.4)
a4 = Car(brand= ???.audi, engine=2)
s8 = Car(brand= Brands(1), engine=6.2)

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
