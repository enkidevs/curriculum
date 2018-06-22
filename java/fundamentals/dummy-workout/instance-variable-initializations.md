---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - best-practice

---
# Instance variable initializations

---
## Content

Consider the following code:

```java
public class Coin {
  private double value = 1;
  private String name = "Dollar";
}
```
These default values are used for every object that is being constructed.

There is also another, much less common, syntax which is analogous to the static initialization blocks. You can place one or more initialization blocks inside the class definition. All statements in that block are executed whenever an object is being constructed:

```java
public class Coin {
  { value = 1;
    name = "Dollar";
  }
  private double value;
  private String name;
}
```
 
