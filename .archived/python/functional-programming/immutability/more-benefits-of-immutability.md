---
author: stefkn

levels:
  - beginner
  - basic
  - medium

aspects:
  - workout
  - obscura

type: normal

category: must-know

links:

  - '[Dictionaries Basics](https://bdhacker.wordpress.com/20){website}'
  - '[How to override comparison operators in Python](http://jcalderone.livejournal.com/32837.html){website}'


---

# More Benefits of Immutability

---
## Content

### Avoiding identity mutation

For intuitive convenience, it is useful in some cases for objects to be seen as identical if their internal states are identical, such as when comparing the contents of two lists.[1] The problem with using mutable objects is that this is not possible; if we mutate the state it is no longer evaluated as being identical--the identity changes with the mutation of state.

Usually a mutation of state will change the internal state of the object to be different to that of the object it is being compared to, and so this seems acceptable, even *desired* in most cases. However, there are some scenarios where this is not ideal, such as in Key-Value pairs. If some field is mutated within the key object and we try to check if the dictionary contains the same key again, it will return `False`. The identity of the object has been permanently mutated, and the object associated with the object before mutation is no longer accessible, even if it is still technically the same object.

In Python's standard library, mutable data types are prohibited from being used as a key for this very reason. Immutable objects are great for use as keys for any kind of data structure relying on associations between keys and values (such as in a dictionary)[2] as there is no possibility of a corrupted key making a certain value unretrievable.

### Atomicity of failure

This is an easy one: *mutable objects can sometimes be left in a half-broken state*. If we call some method on an object which causes it to throw an exception, but still exist, that object's state might not properly reflect what it is meant to describe, or be improper in some way. In this case, it is the object user's duty to properly think of all the possible situations and exceptions that could occur and handle them properly; one missed case and the object could cause bugs or maintainability issues.

Take a look at this simple class, `MutableShoppingBasket`, representing a user's basket on some online store. It holds an integer keeping track of the number of items, and it can increment (increase by one) or decrement (decrease by one) that integer. In the constructor we make sure that it is not possible to create a shopping basket with less than zero items.

```python
class MutableShoppingBasket:
  def __init__(self, itemcount):
    if itemcount < 0:
      raise ValueError("""You can't have
    less than zero items in the basket!""")
    self.itemcount = itemcount

  def increment_items(self):
    self.itemcount +=1

  def decrement_items(self):
    self.itemcount -=1

  def __repr__(self):
    return("Shopping Basket with " +
     str(self.itemcount) + " items.")
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

It doesn't let us, as, in creating the new object, we fail to satisfy the constraints when the constructor is called. The object is not created, and it is easy to spot where we've went wrong due to failure being contained at this point and this point only. (*As opposed to silently creating a broken object to cause trouble elsewhere.*) This is another great advantage of immutable objects as it provides this without much extra effort on the developer's part.

---
## Practice

What is the code snippet below an example of?

(Remember that the `Connection` class defaults to the last HTTP method used if one is not specified in `request()`. See the footnotes in the insight for more information.)

```python
conn = Connection(
  http.client.HTTPConnection(
              "httpbin.org", 80))
r1 = conn.request("POST")
r2 = conn.request("", "text=hello")
```

???


* Temporal coupling
* Atomicity of failure
* Identity mutation
* Side effects

---
## Revision

In what kind of data structures are immutable objects ideal to be used as keys?

???


* Dictionaries
* List
* Integers
* Arrays
* Strings

---
## Footnotes
[1:Identity based on Internal State]
The ability to compare two objects not based on their identity but based on their internal state can be achieved by overloading the comparison operators implemented by the object class. In the case of Python, this would be by customizing the `__eq__` method to check inside the state of the object being compared to and checking that state against the current object's own state. This should not be done lightly, however, as many parts of the runtime and standard library rely on these operators and this could cause more trouble than it saves time without careful consideration. See the link in the 'Learn More' section for more information.

[2:Data Structures]
Any data structure with associative mappings between keys and values (Key-Value pairs) can benefit from the added reliability that immutable keys provide. In Python, the standard associative data structure would be the `Dictionary` data type, which is similar to a Java or C++ `Hashtable`. See the link in the 'Learn More' section for more information.
 
