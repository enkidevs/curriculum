---
author: catalin
type: normal
category: best-practice
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/3615721/how-to-use-the-tostring-method-in-java){website}
notes: |
  https://insights.enki.com/#/contrib/55ba52a4d5e04e4f0066fe2d
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Supply `toString()` in all classes


---

## Content

*Java* `toString()` method is inherited by any object, both user defined or provided by the JDK.

By default, it will return the `class` name followed by the `@` character and the hexadecimal value of it's `hashCode`.

`@Override` this method in order to provide any relevant debugging or printing information:

```java
//user defined MyObject
 @Override
    public String toString() {
        return "This is useful" ;
    }

```

The *PrintStream* method `println()` will invoke the `toString()` method, directly printing the relevant information.

```java
System.out.println(new MyObject());
```

Insert print statements to view the object state during the program run. Some debuggers can even invoke the `toString()` method on objects that you inspect.


---

## Practice

What class is `toString()` method inherited from?

???

- Object
- String
- Field
- JavaObj


---

## Revision

What does the `toString()` method return by default?

???

- The name and hashcode of the class.
- The first field value.
- Every field:value pair.
- Every field:value pair and a list of methods.
