---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal
aspects:
  - introduction
  - workout
category: tip


standards:
  python.object-oriented.2: 10


links:

  - '[lgiordani.com](http://lgiordani.com/blog/2014/05/19/method-overriding-in-python/#.Vsx21JyLRhF){website}'


notes: >
  Again, preferably use other names for classes instead of words containing Enki
  all the time. More realistic names would help. E.g. Animal for the parent
  class and Bird for the child class. Also, then the output would make more
  sense, because it would say: "I am an animal." and then "I am a bird" -
  instead of "parent" and "child" which is slightly confusing to beginners.


  Made the changes in the insight.

---

# Method overriding

---
## Content

Python does not have special syntax for method overriding.

To *override* a parent method, the child class should define a method with the **exact** same name and parameters as its parent's.

```python
class Animal:
    def identify(self):
        print("I am an animal")

class Bird(Animal):
    def identify(self):
        print("I am a bird")

bird = Bird()
bird.identify()

# output: I am a bird
```

To add some behavior to a method but also use the parent method behavior, use `super()`:
```python
# No changes made to the class Animal
# Change class Bird to:
class Bird(Animal):
    def identify(self):
         # added line, calls parent method
        super().identify()
        print("I am a bird")

bird = Bird()
bird.identify()

# output:
I am an animal
I am a bird
```

---
## Practice

To extend the functionality of a parent's class method, but not override it, you can use the ??? function.


* `super`
* `yield`
* `await`
* `extend`
* `return`

---
## Revision

Consider the following snippet:
```python
class Parent():
  def hello(self):
    print('I am parent')

class ???(???):
  def ???(???):
    print('I am child')

child = Child()
child.hello()
# I am child
```
Complete the missing gaps such that the output of running it will match the given comment.


* `Child`
* `Parent`
* `hello`
* `self`
* `Child()`
* ` `
* `child`
* `super`
* `hello()`
