---
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

aspects:

  - introduction

  - workout

---

# The `static` and `final` Modifiers

---
## Content

Both `static` and `final` are non-access modifiers. Therefore, they can be used in conjunction with one another or with access modifiers such as `public` or `private`.

Variables that are declared `static` exist outside instances of the class, with every instance sharing the same variable. Static variables are also known as *class* variables.

The same happens for a static method. It can be accessed independently of any class instance. Because of this, static methods **are not allowed** to reference *instance specific* variables.

For example:
```java
public class Car{
  private static int piecesSold = 0;
  public Car(){
    piecesSold = piecesSold + 1:
  }

  public static void printSold(){
    System.out.print(piecesSold + " ");
  }
}

public class FamilyCar extends Car{
  public FamilyCar(){
    super();
  }
}
```
The above snippet counts how many `Car` objects are instantiated. It also counts the number of subclasses instantiated:
```java
Car a = new Car();
Car b = new FamilyCar();
FamilyCar c = new FamilyCar();

a.printSold();b.printSold();c.printSold();
Car.printSold(); FamilyCar.printSold();

```
With the output:
```bash
3 3 3 3 3
```
The last two calls are acceptable because `static` methods are class specific.

The `final` modifiers limits the initializations number to *1*. A final variable cannot be reassigned to refer another object.

However, the data inside the object can be changed (also called its *state*).

For example:
```java
public Car{
  private final int value = 10;
  private static final int PRICE = 30;

  public void changeValue(int x){
    value = x; // error
  }
}
```
N.B. `static` and `final` can be used together to create a constant, class specific variable. Their identifiers should also be all capital letters.

A `final` method cannot be overridden by any subclass. This is particularly useful when outsiders shouldn't modify the behavior of the class.

---
## Practice

How are static variables also called?

???
* Class variables.
* Instance variables.
* Constants.
* Class constants.

---
## Revision

Variables declared `final` cannot be ???.

* reassigned
* modified
* copied
* referenced
 
