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

# The `final` Modifier


---

## Content

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

Which of the following lines would give rise to an error?

```java
1. String DATE = "01-01-2020";
2. final String ETAD = "2020-01-01";
3. DATE = ETAD;
4. ETAD = DATE;
5. System.out.println(DATE);
```

???

- 4
- 1
- 2
- 3
- 5


---

## Revision

Variables declared `final` cannot be ???.

- reassigned
- modified
- copied
- referenced


---

## Quiz

### how do final variables work?


```java
public class Person {
  String name = "name";
  public Person(String name) {
    this.name = name;
  }
  public void newName(String name) {
    this.name = name;
  }
  public void printName() {
    System.out.println(name);
  }
}

final Person p = new Person("Sam");
p.newName("John");
p.printName();
```

 ???

- John
- Sam
- name
- Exception
