---
author: abhavk
type: normal
category: how-to
links:
  - '[www.c2.com](http://www.c2.com/cgi/wiki?DoubleBraceInitialization){website}'
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

# Double Brace Initialization


---

## Content

Instead of having to always initialize a set, list or map to contain elements by manually initializing a set and adding elements to it (for example to pass to a function), Java provides a way to do it all in one go. It's called Double Brace Initialization. For example the following code:

```java
public Set<String> mySet = new 
HashSet<String>();
mySet.add("one");
mySet.add("two");
mySet.add("three");

someFunction(mySet);

```

becomes:

```java
someFunction(new HashSet<String>() {{
  add("one");
  add("two");
  add("three");
}});
```


---

## Practice

Complete the following code snippet using double brace initialization to create an anonymous class derived from the initial specified class:

```java
new ArrayList<String>() ???
      ???("Enki!");
}};
```

- `{{` 
- `add` 
- `((` 
- `{(` 
- `push`


---

## Revision

Which of the following Java code snippets uses Double Brace Initialization properly to create a new HashSet? 

```java
// Option A
newSet(new HashSet<String>() {
  add("Enki");
  add("Revising!");
}   
// Option B
newSet(new HashSet<String>{} {{
  add("Enki"),
  add("Revising!")
}}); 
// Option C
newSet(new HashSet<String>() {{
  add("Enki");
  add("Revising!");
}});
```

???

- Option C
- Option A
- Option B
