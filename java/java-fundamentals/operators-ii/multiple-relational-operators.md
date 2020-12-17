---
author: pawel
type: normal
category: tip
notes: Hope it's not too basic
---

# Multiple Relational Operators


---

## Content

Consider:

```java
if (-2 <= x <= 2) { doSomething }
```

Intuitively, it may appear as though this checks whether `x` exists within the range of -2 to 2. However, Java would evaluate the value of first expression:

```plain-text
-2 <= x
```

and assign value true or false. 

The outcome of that test is then compared against 2, which is not the intended step. To write such condition correctly make sure to use `AND`:

```java
if (-2 <= x && x <= 2) { doSomething }
```
