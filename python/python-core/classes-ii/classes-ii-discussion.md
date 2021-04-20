---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Test Yourself

---

## Content

Now that you've learned about classes, it's time to practice!

How would you create and instantiate a class called `Rectangle`?

The class should have an `__init__` method, plus two methods that will be used to calculate the area and perimeter of the rectangle.

When you call the methods, they should print the calculated output as part of a message - for example, `"The area is 10"`.

To achieve this, you should use the following concepts:
- class keyword (`class`)
- function creation (`def ...`)
- area of a rectangle (`Length * Width`)
- perimeter of a rectangle (`2 * Length + 2 * Width`)

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.


---

## Footnotes

[1: Hints]

Start by creating the `Rectangle()` class and the `__init__` method:

```python
class Rectangle():
  def __init__(self, l, w):
    self.length = l
    self.width = w
```

Then, add the two methods:

```python
# Example 1
def perimeter(self):
  return print("The perimeter of the given rectangle is",\
    self.length * 2 + self.width * 2)

def area(self):
  return print("The area of the given rectangle is",\
    self.length * self.width)


# Example 2
def perimeter(self):
  return self.length * 2+ self.width * 2

def area(self):
  return self.length * self.width
```

Next, instantiate the class and call the two methods:

```python
# Example 1
someRectangle = Rectangle(4, 2)

someRectangle.area()
someRectangle.perimeter()


# Example 2
someRectangle = Rectangle(6, 2)

print("The area of the given rectangle is",someRectangle.area())
print("The perimeter of the given rectangle is",someRectangle.perimeter())
```
