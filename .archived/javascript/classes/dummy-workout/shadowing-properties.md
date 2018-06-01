---
author: rosielowther

levels:

  - advanced

  - medium

type: normal

category: caveats

links:

  - >-
    [github.com](https://github.com/getify/You-Dont-Know-JS/blob/master/this%20&%20object%20prototypes/ch5.md){website}

---
# Shadowing Properties

---
## Content

Setting a property of an object:
```
myObject.foo = "bar";
```
In the case that `myObject` does not have a property `foo`, the `[[Prototype]]` chain will be searched. If `foo` is found higher on the chain, then a new property `foo` will be added to `myObject`. 

The lower `foo` **shadows** the higher `foo`, because any look-up would always find the `foo` property lowest in the chain. 

A shadow property is **not created**, and the `foo` value **not set** if:


* a `foo` higher on the `[[Prototype]]` chain is marked as **read-only**. 

* a `foo` higher on the `[[Prototype]]` chain is a **setter**. The setter will always be called. 

In these cases `Object.defineProperty()` must be used to shadow a property.

---
## Practice

A shadow property won’t be created and the foo value not set if a foo higher on the `[[Prototype]]` chain is marked as ???, or if a foo higher on the `[[Prototype]]` chain is a ???.

* read-only
* setter
* getter
* constructor
* read/write only
* read/write/execute only

---
## Revision

What must be used if a **shadow property** can't be created?

???

* Object.defineProperty()
* Object.assign()
* simple assignment