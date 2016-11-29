# Method overriding
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

notes: >
  Again, preferably use other names for classes instead of words containing Enki
  all the time. More realistic names would help. E.g. Animal for the parent
  class and Bird for the child class. Also, then the output would make more
  sense, because it would say: "I am an animal." and then "I am a bird" -
  instead of "parent" and "child" which is slightly confusing to beginners.


  Made the changes in the insight.

links:

  - >-
    [lgiordani.com](http://lgiordani.com/blog/2014/05/19/method-overriding-in-python/#.Vsx21JyLRhF){website}

---
## Content

Python does not have special syntax for method overriding.

To *override* a parent method, the child class should define a method with the **exact** same name as its parents.

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
# No change to class Animal from above
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

If you do not want to override the behaviour of a parent class, but just to extend it you can use the ??? keyword.

*`super` 
*`yield` 
*`await` 
*`extend` 
*`return`

---
## Revision

Python ??? have special syntax for method overriding.

*`does not` 
*`does`