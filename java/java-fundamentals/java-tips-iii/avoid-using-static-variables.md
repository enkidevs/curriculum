---
author: catalin
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/7026507/why-are-static-variables-considered-evil?rq=1){website}
  - >-
    [gbracha.blogspot.co.uk](http://gbracha.blogspot.co.uk/2008/02/cutting-out-static.html){website}
notes: 'https://insights.enki.com/#/contrib/55963a353fa08f3200a41135'
---

# Avoid using `static` variables


---

## Content

Using `static` variables enables objects constructed from the same class to effectively share the same field. 
Even though `static` variables will be of help in certain scenarios (such as counters) they are to be avoided in most cases.

Use static as a counter:

```java
    static int counter = 0;
    public void increment() { counter++;}

```

First of all, they break the object **encapsulation** rule. `Static` fields are associated with a class not with an object, acting as global variables.

`Static` variables have a lifetime that matches the entire run-time of the program, being bad for memory management. This state has to be handed specially by implementations, complicating **GC**. 

```java
public class MyObject{
 static String TEXT = "Enki";
}
//TEXT field will occupy memory before
// any MyObject objects are created.

```

To ensure a single copy of a value, a **singleton** pattern is better practice.
In addition, `static` variables are bad for **security**, **re-entrancy** and **concurrency**.

Keep in mind though that `static` constants are not considered a bad practice.
