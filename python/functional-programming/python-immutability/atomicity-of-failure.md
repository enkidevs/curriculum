---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [How to Override Comparison
    Operators](http://jcalderone.livejournal.com/32837.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Atomicity of Failure


---

## Content

This is an easy one: *mutable objects can sometimes be left in a half-broken state*. If we call some method on an object which causes it to throw an exception, but still exist, that object's state might not properly reflect what it is meant to describe, or be improper in some way. 

In this case, it is the object user's duty to properly think of all the possible situations and exceptions that could occur and handle them properly; one missed case and the object could cause bugs or maintainability issues.

Take a look at this simple class, `MutableShoppingBasket`, representing a user's basket on some online store. It holds an integer keeping track of the number of items, and it can increment (increase by one) or decrement (decrease by one) that integer. In the constructor we make sure that it is not possible to create a shopping basket with less than zero items.

```python
class MutableShoppingBasket:
  def __init__(self, itemcount):
    if itemcount < 0:
      raise ValueError("""You can't have less than zero items in the basket!""")
    self.itemcount = itemcount

  def increment_items(self):
    self.itemcount +=1

  def decrement_items(self):
    self.itemcount -=1

  def __repr__(self):
    return("Shopping Basket with " + str(self.itemcount) + " items.")
```

Can you see how this constraint could be broken? Let's do it:

```python
b = MutableShoppingBasket(1)
print(b)
# Shopping Basket with 1 items.
b.decrement_items()
print(b)
# Shopping Basket with 0 items.
b.decrement_items()
print(b)
# Shopping Basket with -1 items.
```

This specific `MutableShoppingBasket` is now in a broken state and ready to cause undefined behaviour in other parts of the program and our site. What if we used it in an immutable fashion?

```python
b = MutableShoppingBasket(1)
print(b)
# Shopping Basket with 1 items.
b2 = MutableShoppingBasket(b.itemcount-1)
print(b2)
# Shopping Basket with 0 items.
b3 = MutableShoppingBasket(b2.itemcount-1)
print(b3)
# Traceback (most recent call last):
#   File "python", line 27, in <module>
#   File "python", line 4, in __init__
# ValueError: You can't have less than
#    zero items in the basket!
```

It won't work. When creating the new object, we fail to satisfy the constraints when the constructor is called. The object is not created, and it is easy to spot where we've went wrong due to failure being contained at this point and this point only (*as opposed to silently creating a broken object to cause trouble elsewhere*). This is another great advantage of immutable objects as it provides this without much extra effort on the developer's part.


---

## Practice

What is the code snippet below an example of?

(Remember that the `Connection` class defaults to the last HTTP method used if one is not specified in `request()`. See the footnotes in the insight for more information.)

```python
conn = Connection(http.client.HTTPConnection("httpbin.org", 80))
r1 = conn.request("POST")
r2 = conn.request("", "text=hello")
```

???

- Temporal coupling
- Atomicity of failure
- Identity mutation
- Side effects


---

## Revision

In what kind of data structures are immutable objects ideal to be used as keys?

???

- Dictionaries
- List
- Integers
- Arrays
- Strings
 
