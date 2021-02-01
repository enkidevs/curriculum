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
---

# Avoiding Identity Mutation


---

## Content

### 

For intuitive convenience, it is useful in some cases for objects to be seen as identical if their internal states are identical, such as when comparing the contents of two lists[1].

The problem with using mutable objects is that this is not possible; if we mutate the state it is no longer evaluated as being identical -- the identity changes with the mutation of state.

Usually a mutation of state will change the internal state of the object to be different to that of the object it is being compared to. This seems acceptable, or even *desired* in most cases. 

However, there are some scenarios where this is not ideal, such as in Key-Value pairs. If some field is mutated within the key object and we try to check if the dictionary contains the same key again, it will return `False`. The identity of the object has been permanently mutated, and the object associated with the object before mutation is no longer accessible, even if it is still technically the same object.

In Python's standard library, mutable data types are prohibited from being used as a key for this very reason. Immutable objects are great for use as keys for any kind of data structure relying on associations between keys and values (such as in a dictionary[2]) as there is no possibility of a corrupted key making a certain value unretrievable.


---

## Practice

In what kind of data structures are immutable objects ideal to be used as keys?

???

- Dictionaries
- List
- Integers
- Arrays
- Strings


---

## Footnotes

[1:Identity Based on Internal State]
The ability to compare two objects not based on their identity but based on their internal state can be achieved by overloading the comparison operators implemented by the object class. 

In the case of Python, this would be by customizing the `__eq__` method to check inside the state of the object being compared to and checking that state against the current object's own state. 

This should not be done lightly, however, as many parts of the runtime and standard library rely on these operators and this could cause more trouble than it saves time without careful consideration. 

See the link in the **Learn More** section for more information.

[2:Data Structures]
Any data structure with associative mappings between keys and values (Key-Value pairs) can benefit from the added reliability that immutable keys provide. 

In Python, the standard associative data structure would be the `Dictionary` data type, which is similar to a Java or C++ `Hashtable`.

See the link in the **Learn More** section for more information.
 
