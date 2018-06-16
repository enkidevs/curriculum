---
author: mihaiberq

levels:

  - basic

type: normal

category: tip




---

# Testing Private Methods and Fields

---
## Content

Times may come when you will have to test **private** methods. As using *inner classes* to write tests is *not advisable* (as tests would likely end up in production), three other methods are to be considered.

The least intrusive method is to test **the contract** that class has with other objects: is every other object for which the private method was used behaving properly? If they do, then you can assume the code works as expected.

Another option is to use **reflection**.  Reflection can be used for observing and modifying program execution. It allows for instantiation of objects and invocation of methods that would otherwise be private:
```java
import java.lang.reflect.Method;

User john = new User("John");
// look for "checkPassHash()" method
// which has a single argumet of type String
// "new Class[] { String.class }""
Method toTest = User
  .getDeclaredMethod("checkPassHash",
    new Class[] { String.class });
// make it accessible
toTest.setAccessible(true);
// call "checkPassHash()" method on john
toTest.invoke(john);


public class User {
  ...
  private boolean
    checkPassHash(String hash) {
      // connect to DB
      String userHashedPass = ...;
      return userHashedPass.equals(hash);
    }
}
```
The last option would be to **refactor** said class. Maybe the class to be tested does too much and some functionality can be moved inside another class. This, again, is a matter of *software design*.

---
## Practice

Is the following statement true?
```
JUnit can test private methods by itself.
???
```

* False
* True

---
## Revision

The least intrusive method of unit testing private methods and fields is to

???


* test the contract between the classes
* use reflection to gain access to the private methods
* refactor the class
* define an inner testing class

 
