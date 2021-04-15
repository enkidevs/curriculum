---
author: catalin
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/2575429/interface-as-a-method-parameter-in-java){website}
  - >-
    [www.vogella.com](http://www.vogella.com/tutorials/JavaCollections/article.html#collectionssort){website}
notes: 'https://insights.enki.com/#/contrib/5599d0efef6d014f00958ea6'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using an interface as a parameter


---

## Content

You can define methods that take an **interface** as a parameter. Your interface defines a *contract* and your methods will accept as parameter any objects whose class *implements* that **interface**. This is in fact one of the most common and useful ways to use an **interface**.

```java
 interface Test {
  public void test(); //define the interface
}
 class Tester {
  public void runTest(Test t) {
    t.test(); 
  } // method with interface as param
}
```

`MyTest` class will implement this interface:

```java
class MyTest implements Test {
  public void test() { // running code }
}
```

Now the `runTest` method will take as a parameter any object that implements the `Test` Interface:

```java
Tester tester = new Tester();
Test test1 = new MyTest();
tester.runTest(test1);
```

The *collection framework* from the standard Java API frequently uses this procedure. For example, `Collections.sort()` can sort any class that implements the `List` interface and whose contents implement the `Comparable` interface.


---

## Revision

Which of the following is an example of a method that takes an interface as argument?

???

- Collections.sort()
- Arrays.sort()
- UserDefinedFileAttributeView.read() 
- List.add()
