---
author: pawel
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Prefix and Postfix of Increment Operators


---

## Content

Java supports 2 forms of shorter incrementation[1] of variables:

```java
int i = 3;
System.out.println(i++); 
// 3
System.out.println(++i); 
// 5
```

Let's first look at the postfix incrementation (`i++`): 

```java
int i = 3;
int j = i++;
System.out.println(i);
// 4
System.out.println(j);
// 3
```

In this case, the value of `i` is incremented **after** it is assigned to `j`. So, `j` will be assigned the value of `3`, followed by incrementing the value of `i`.

Prefixing the increment operator (`++i`) has a slightly different behaviour.

```java
int i = 3;
int j = ++i;
System.out.println(i);
// 4
System.out.println(j);
// 4
```

Here, the value of `i` is incremented **before** it is assigned to `j`. This means that first we set the value of `i` to `4`, followed by setting the value of `j` to `4`.

We've only talked about incrementing, but the same applies to decrementing (`--`).


---

## Practice

How would you rewrite this code using shorthand notation?

```java
int i = 0;
i = i + 1;
int j = i;
```

???

- `int j = ++i`
- `int j = i++`
- `int j = i + 1`


---

## Revision

What's the value of `b` at the end of the snippet?

```java
int a = 0;
int b = a++;
System.out.print(b);
// ???
```

- 0
- 1
- 2
- null


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

- 1 and 1
- 1 and 2
- 2 and 1
- 0 and 1


---

## Footnotes

[1:Increment and Decrement]
In computer science, incrementing means **increasing** the value by 1. On the same note, decrementing means **decreasing** the value by 1.
