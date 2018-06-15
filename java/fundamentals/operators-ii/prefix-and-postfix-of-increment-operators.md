---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip



notes: ''

---

# Prefix and postfix of increment operators

---
## Content

Java supports 2 forms of shorter incrementation of variables:

```java
int i = 3;
int j = 10
System.out.println(++i); // Prints 4
System.out.println(j++); // Prints 10
```
The prefix form performs the increment or decrement operation and then returns the value of the operation, while postfix form returns the current value of the expression and only then performs the increment or decrement operation on that value.

Be careful if you decide to use both as mixing them can be confusing:
```java
int a = 0;
int b = a++;
// b == 0, a == 1
int c = ++b;
// c == 1, b == 1
```

---
## Practice

Which shorthand notation is equivalent to the snippet below, given `i = 0`?
```java
int i = 0;
i = i + 1;
int j = i;
```
???

* `int j = ++i`
* `int j = i++`
* `int j = i + 1`

---
## Revision

What's the value of `b` at the end of the snippet?
```java
int a = 0;
int b = a++;
System.out.print(b);
// ???
```

* 0
* 1
* 2
* null

---
## Quiz 

### what is the difference between prefix and postfix increment operators?

What is the output?

```java
int a = 0;
int b = a++;
int c = ++b;
System.out.println(b + " and " + c);
```

 ???

* 1 and 1
* 1 and 2
* 2 and 1
* 0 and 1
 
