---
author: fahimrahman
type: normal
category: caveats
tags:
  - pass-by-value
  - java
links:
  - >-
    [A more in-depth
    explanation](http://javadude.com/articles/passbyvalue.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# There is no such thing as *pass-by-reference* in Java


---

## Content

Everything in Java is *pass-by-value*. This means:

- When primitive type variables (`int`, `boolean`, `char`, etc.) are used as arguments in methods, the value contained in it is passed or is simply *copied*, but the variable retains its value even after the method invocation.

- When objects (`String`, `Object`, etc.) are used as method arguments, a reference value that *points* to the object is passed. In other words, *object references are passed by value*.

> `Person p` is a **pointer** to a Person object and not a stand-alone Person object.

```java
public class JavaIsPassByValue {

  public static void changeName 
  (Person per){
    per.setName("Andrew");
  }
  public static void changePoint
  (Person per){
// make per point to another object
    per = new Person("Sam");
    per.setName("Test");
  }
     
  public static void main
  (String args[]){    
    Person p = new Person("John");
    System.out.println(p.getName());
    changeName(p);
    System.out.println(p.getName());
    changePoint(p);
    System.out.println(p.getName());
  }
}

/* Output:
John
Andrew
Andrew
*/
```


---

## Practice

What will this snippet output?

```java
public void foo(Person per){
  per.setName("Tom");
  per = new Person("Mike");
  per.setName("Anna");
}   
Person p = new Person("John");
foo(p);
System.out.println(p.getName());
//???
```

- `Tom` 
- `John` 
- `Mike` 
- `Anna`


---

## Revision

What will this snippet output?

```java
public void foo(Person per){
  per.setName("Mike");
  per = new Person("Cat");
  per.setName("Jordan");
 }    
Person p = new Person("Tom");
foo(p);
System.out.println(p.getName());
//???
```

- `Mike` 
- `Tom` 
- `Cat` 
- `Jordan`
