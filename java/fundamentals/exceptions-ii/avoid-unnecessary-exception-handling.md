---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2013/03/0-exception-handling-best-practices-in-Java-Programming.html){website}
  - >-
    [codereview.stackexchange.com](http://codereview.stackexchange.com/questions/11724/is-it-better-practice-to-have-void-method-throw-an-exception-or-to-have-the-meth){website}
---

# Avoid unnecessary exception handling


---

## Content

Throwing and catching exceptions is costly in terms of performance. Avoiding unnecessary exception handling can speed up your code. 

Another disadvantage of overusing exception handling is that frequent use of `try` and `catch` blocks can make code less readable by obfuscating the control flow of a program.

In some cases, it may be more appropriate to return a `boolean` value to indicate the result of an operation rather than trying to catch an exception. This can result in more efficient and cleaner looking code.

```java
public void method() {
  validator(p);
}
//validates code and throws an exception
private void validator(Object p)
  throws Exception {
  try { //something
  }
  catch { //exception
  }
}
```

Rather than using `throw` and `catch` like in the above example, we could change the validation method to return `boolean` like this:

```java
public void method() {
  if(!isValid(p)) 
    throw new Exception();
}
private boolean isValid(Object p) {
  //check if valid
  return //true/false
}
```
