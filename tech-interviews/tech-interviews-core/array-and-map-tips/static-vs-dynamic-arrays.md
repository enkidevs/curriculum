---
author: abd147
category: tip
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Static vs Dynamic Arrays

---
## Content

Different programming languages implement arrays differently, which can affect the complexity of array operations.

---

#### Static arrays

In C++ or Java, arrays are **static** and have a fixed size you set when creating an array.

Adding or removing an item takes as many steps as the size of the array, i.e. O(N), because you need to create a new array with the changed size and copy all the items over.

An exception to this is if the position to be inserted/removed is at the end of the array.

> 💡 C++ and Java have library data structures that behave like dynamic arrays.

---

#### Dynamic arrays

In Python, JavaScript, Ruby, or PHP, arrays are **dynamic** and can grow as needed. 

Dynamic arrays are appropriate when you don't know how many items you'll need to store.

A dynamic array is typically a wrapper around a fixed-size static array with extra room. 

Once the extra room starts filling up, a new static array is created, and elements are copied over.

---
## Practice

What's the Big-O for adding an element in the middle of a fixed-size array?

Hint: elements need to be shifted to accommodate the newly added one.

???

- O(N)
- O(N²)
- O(logN)
- O(1)

---
## Revision

What's the Big-O for adding an element in the middle of a fixed-size array?

???

- O(N)
- O(N²)
- O(logN)
- O(1)
