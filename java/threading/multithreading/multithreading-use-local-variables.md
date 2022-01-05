---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - multithreading
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2015/05/top-10-java-multithreading-and.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Multithreading: use local variables


---

## Content

Using local variables rather than class or instance variables can help prevent synchronization problems.

```java
//list is a class variable
private static List list =
  Collections.synchronizedList(
  new ArrayList());
@Override
public void method(String input){
  list.add(input);
  list.clear();
}
```

In the example above, we attempt to save memory by reusing list and clearing it at the end of each call to method().

However if we have multiple interleaved method calls, then they will be sharing access to `list`. This means that the input from one method call will be visible to a separate method call. The list might also be cleared by one while another is still using it.

We can solve this problem by declaring list as a local variable inside `method()` instead. This will use more memory, but guarantee that interleaved method calls do not interfere with each-other's lists.

```java
public void method(String input){
  // prefer this: 
  List list = new ArrayList();
  list.add(input);
}
```

---

## Revision

When multithreading, what type of variable should be used to prevent synchronization problems? 

???

- local variables
- class variables
- instance variables
- threading variables
