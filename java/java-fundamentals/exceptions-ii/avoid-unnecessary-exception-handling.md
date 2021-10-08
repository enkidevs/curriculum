---
author: adamMontgomerie
type: normal
category: tip
tags:
  - exceptions
links:
  - >-
    [Void vs Boolean](http://codereview.stackexchange.com/questions/11724/is-it-better-practice-to-have-void-method-throw-an-exception-or-to-have-the-meth){website}
---

# Avoid unnecessary exception handling


---

## Content

One disadvantage of overusing exception handling is that it leads to redundant code which is just "noise" and doesn't contribute to making the program better or safer. 

This in turn also makes the codebase grow which requires more effort for a programmer to understand it.

```java
try {
  doX(c);
} catch (MyException e) {
  // transforming exceptions is one common
  // way of adding redundant try/catch
	throw new MyOtherException(e, e.getCode()); 
}
```

Frequent uses of `try` and `catch` can obfuscate the control flow of a program and thus should only be used if they introduce a benefit in exchange for the extra code. 

A generally good rule to follow when deciding where you should catch an exception is:

> 💡 You should catch an exception when you are in the part of the code that knows what to do with it.

Another way to overuse exceptions is to throw them for non-critical errors or warnings.

In those cases, it may be more appropriate to return a `boolean` value to indicate the result of an operation rather than throwing an exception. 

```java
public void method() {
  validator(p);
}
//validates code and throws an exception
private void validator(Object p)
  throws Exception {
  try {
    //something
  }
  catch {
    //exception
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
  // check if valid
  return // true / false
}
```
