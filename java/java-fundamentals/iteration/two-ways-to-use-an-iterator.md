---
author: adamMontgomerie
type: normal
category: feature
tags:
  - loops
  - iterators
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=125){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Two ways to use an `Iterator`


---

## Content

An `Iterator` can be used to iterate over a collection using either a `for` loop or a `while` loop.

```java
List<String> fruit = Arrays.asList(
"apple", "orange", "dragon fruit");

//iterating over a list using a while loop
Iterator<String> fruitIt = fruit.iterator();
while (fruitIt.hasNext()){
  System.out.println(fruitIt.next());
}
//iterating over a list using a for loop
for (Iterator<String> fruitIt =
  fruit.iterator(); fruitIt.hasNext()){
  System.out.println(fruitIt.next());
}
```

Both methods have advantages. The `while` loop is more legibile but the `for` loop reduces the scope of the iterator to the loop itself.


---

## Practice

Complete the following code such that it iterates over a while loop:

```java
List<String> enki = Arrays.asList(
"enki", "is", "awesome");

Iterator<String> enkIt =
            enki.???();
while (enkIt.???()){
  System.out.println(enkIt.next());
}
```

- `iterator`
- `hasNext`
- `next`
- `hasElements`
- `Iterator`
- `containsElements`


---

## Revision

An `iterator` can be used to :

???

- `iterate over for and while loops`
- `see elements of an array`
- `concatenate strings`
- `append strings`
- `iterate a class`
- `iterate a method`
