---
author: kld14

levels:

  - basic

  - beginner

type: normal

category: caveats

aspects:

  - introduction

tags:

  - switch

  - break

  - mistake

---

# Common mistake in switch statements

---
## Content

One common mistake is not including the `break` keyword in a switch statement.


Control flow of the switch statement continues until it hits a break.

```java
switch (num) {
  case 0: 
    System.out.println("zero");
  case 1: 
    System.out.println("one");
    break;
  case 2: 
    System.out.println("two");
    break;
  default: 
    System.out.println("default");
}

```
 For example, assuming `num` is `0`, it prints:

```
zero
one
```
If the intended output were to be just zero on its own, then a `break` will need to be added after each case, as shown below. Upon executing the `break` keyword (in this context), the Java will branch off to the end of the switch statement.

```java
switch (num) {
  case 0: 
    System.out.println("zero");
    break;
  case 1: 
    System.out.println("one");
    break;
  case 2: 
    System.out.println("two");
    break;
  default: 
    System.out.println("default");
}

```
Including the break in the last case is not strictly necessary.

---
## Practice

What would this snippet output, if `num=1` ?
```java
switch (num) {
  case 0: 
    System.out.print(0);
  case 1: 
    System.out.print(1);
  case 2: 
    System.out.print(2);
  default: 
    System.out.print(3);
    break;
}

???
```

* `123`
* `0123`
* `1`
* `12`
* `01`

---
## Revision

What would this snippet output, if `num=2` ?
```java
switch (num) {
  case 0: 
    System.out.print(0);
  case 1: 
    System.out.print(1);
  case 2: 
    System.out.print(2);
  default: 
    System.out.print(3);
    break;
}
???
```

* `23`
* `0123`
* `1`
* `12`
* `3`

---
## Quiz 
### what will be the output of the following switch statement?

What's the output for `x=1`?

```java
switch(x) {
  case 0: 
    System.out.print(0);
    break;
  case 1: 
    System.out.print(1);
  case 2: 
    System.out.print(2);
    break;
  default: 
    System.out.print(x);
    break;
}
```

 ???

* 12
* 1
* 121
* 10
