---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how-to

---

# Value or Pointer Receiver?

---
## Content

Pointer receivers tend to be used more than value receivers.

There are two reasons:
- Pointer receivers allow methods to modify the value the receiver points to.
- To avoid copying the value on each method call.

With value receivers, every time you call a method the value is copied. 

> 💡 Even though pointer receivers are used more than value receivers.

> ❗ You can't use both value and pointer receivers in the same method.

If a `struct` you have created is huge, using a value receiver would create large unnecessary copies each time you call the method. So, in this case, a pointer receiver would be better.

On the other hand, if you don't want to edit the receivers value, always use a value receiver.

We will dive into this further with examples in the next workouts.