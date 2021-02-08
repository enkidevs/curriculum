---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The `static` Modifier


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


---

## Practice

What would the following snippet print to the console?

```java
public class Person {
  public static String lastPerson;
  public String name;
  public Person(name) {
    this.name = name;
    this.lastPerson = name;
  }
}

Person john = new Person("John");
Person sam = new Person("Sam");

System.out.println(john.lastPerson);
// ???
```

- Sam
- John
- JohnSam
- SamJohn


---

## Revision

How are static variables also called?

???

- Class variables.
- Instance variables.
- Constants.
- Class constants.


---

## Quiz

### how do class variables work?


```java
public class Dog {
  String name;
  int age;
  static int ageSum = 0;
  public Dog(String name, int age){
    this.name = name;
    this.age = age;
    ageSum += age;
  }
  public int getCurrentSum(){
    return ageSum;
  }
}

Dog d1 = new Dog("Dog", 2);
System.out.print(d1.getCurrentSum() + " and ");
Dog d2 = new Dog("Blitz", 3);
System.out.print(d1.getCurrentSum());
```

 ???

- 2 and 5
- 2 and 3
- 2 and 2
- 5 and 5
