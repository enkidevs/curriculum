---
author: fahimrahman

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - don't-repeat-yourself

  - review

  - java

  - consistency

  - repetition


links:

  - '[www.thejavageek.com](http://www.thejavageek.com/2015/04/10/dont-repeat-yourself-principle/){website}'

notes: 'static workout '

---

# Don't repeat yourself (DRY) principle

---
## Content

Code written should be made easy to maintain by following the *don’t repeat yourself* principle. 

The principle suggests avoiding duplications or copying and pasting blocks of code from one place to another, by moving similar or repetitive code into reusable units like methods or sometimes an entire class. 

For example:
```
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
```
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

 
