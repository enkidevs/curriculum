---
author: pawel
type: normal
category: must-know
tags:
  - hashmap-hashtable
links:
  - >-
    [javahungry.blogspot.com](http://javahungry.blogspot.com/2014/03/hashmap-vs-hashtable-difference-with-example-java-interview-questions.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Difference between `HashMap` and `Hashtable`


---

## Content

Both `HashMap` and `Hashtable` implement Map interface but there are some significant differences between them. 

`HashMap` class is non synchronized and permits null values as key and value, whereas `Hashtable` does not allow nulls.

`Hashtable` is also **synchronized** which means it is thread-safe and `Hashtable` instances can be accessed by multiple threads.


---

## Practice

Which one of the following classes is synchronized?

???

- `Hashtable` 
- `HashMap` 
- `both` 
- `none`


---

## Revision

Which one of the following classes allow `null` values as keys?

???

- `HashMap` 
- `Hashtable` 
- `both` 
- `none`
