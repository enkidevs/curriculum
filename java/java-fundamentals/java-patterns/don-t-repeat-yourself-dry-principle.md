---
author: fahimrahman
type: normal
category: best-practice
tags:
  - don't-repeat-yourself
  - review
  - java
  - consistency
  - repetition
links:
  - >-
    [The DRY Principle](https://www.geeksforgeeks.org/dry-dont-repeat-yourself-principle-in-java-with-examples/){website}
notes: 'static workout '
---

# Don't repeat yourself (DRY) principle


---

## Content

Code written should be made easy to maintain by following the *don’t repeat yourself* principle. 

The principle suggests avoiding duplications or copying and pasting blocks of code from one place to another, by moving similar or repetitive code into reusable units like methods or sometimes an entire class. 

For example:

```java
public class University {
  public void addStudent() {
    // Code for adding a student
    // Code for refreshing student database
  }
  public void removeStudent() {
    // Code for removing a student
    // Code for refreshing student database
	}
}
```

A better implementation would be:

```java
public class University {
  public void addStudent() {
    // Code for adding a student
    refreshDatabase();
  }
  public void removeStudent() {
    // Code for removing a student
    refreshDatabase();
  }
  public void refreshDatabase() {
    // Code for refreshing student database
  }
}
```
