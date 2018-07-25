---
author: Ricardo

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip
aspects:
  - introduction
  - workout
  - deep
tags:

  - type

  - runtime

  - dynamic

  - OOP


standards:
  python.object-oriented.5: 10

links:

  - '[docs.python.org](https://docs.python.org/3/library/functions.html#type){website}'

notes: this should be linked to python metaclasses insight

---

# Dynamically create types

---
## Content

In *Python* every **class** is an instance of so called **metaclass**. This means that we can create new classes without `class` structure by calling `type` function[1]:
```
MyClass = type('MyClass', (), {})
```
This `type` function takes three arguments:
- `name` - name of a class
- `bases` - list of superclasses
- `dict` - dictionary of attributes

These two classes implement the same functionality although syntacticly different
```
# The name is set to "BigCar"
class BigCar:
    counter = 0
    def __init__(self, name):
        self.name = name
    def beep(self):
        return "Beep " + self.name

def Car_init(self, name):
    self.name = name

# We can choose the name of a class
SmallCar = type("BigCar",
  (),
  {"counter": 0,
   "__init__": Car_init,
   "beep": lambda self: "Beep " +
                        self.name})
```
So now these two classes are practically identical (`__name__` property is also equal), the only difference can be seen in types, which does not affect the functionality:
```
x = BigCar("BMW")
y = SmallCar("BMW")

print (type(BigCar))
print (type(SmallCar))
# <type 'classobj'>
# <type 'type'>
print (type(x))
print (type(y))
# <type 'instance'>
# <class '__main__.BigCar'>
print (x)
print (y)
# <__main__.BigCar instance at 0x10a248878>
# <__main__.BigCar object at 0x10a259390>
```

---
## Practice

Complete the following code in order to declare a `class` using `type` in the correct order:

ExampleClass = type (???, ???, ???)


* `Name`
* `SuperClasses`
* `Attributes`
* `SubClasses`
* `Instance`

---
## Revision

What function should be used to create a class Dynamically?

???


* `type(name, bases, dict)`
* `instance(name, bases, dict)`
* `class(name, bases, dict)`

---
## Footnotes
[1:`type` function]
As python documentation says, `type` is a built-in function which is always accessible. It is actually not a function as we would normally think about it but a class constructor which can take one or three parameters (in this insight we only consider a case where it takes three arguments). Of course it can be considered as a function since from users perspective there is no difference between a built-in class constructor and a function.
