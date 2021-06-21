---
author: abhavk
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Diamond Operator


---

## Content

Since Java 7 it's not necessary to declare the type parameter twice while instantiating objects like Maps, Sets and Lists.

Consider the following code:

```java
Map<String, List<Integer>> phoneBook = new 
HashMap<String, List<Integer>>();
```

The type parameter for HashMap in the right hand side of the expression seems redundant. This can be shortened using an empty "Diamond Operator" to give:

```java
Map<String, List<Integer>> phoneBook = new 
HashMap<>();
```


---

## Practice

Which of the following Java code snippets is most efficient and illustrates the correct use of a Diamond Operator?

```java
// Example A
Map<String, List<Integer>> map =
 new HashMap<String, List<Integer>>();

// Example B
Map<String, List<Integer>> map =
 new HashMap<()>;

// Example C
Map<String, List<Integer>> map =
  new HashMap<>();
```

???

- Example C
- Example A
- Example B


---

## Revision

Which of the following Java code snippets is most efficient and illustrates the correct use of a Diamond Operator?

```java
//Example A
Map<String, List<Integer>> map =
 new HashMap<String, List<Integer>>();

// Example B
Map<String, List<Integer>> map =
 new HashMap<>();

// Example C
Map<String, List<Integer>> map =
 new HashMap<()>;
```

???

- Example B
- Example A
- Example C
