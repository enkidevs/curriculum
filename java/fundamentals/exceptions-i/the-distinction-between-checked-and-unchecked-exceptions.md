---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - exceptions
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=129){website}
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/exceptions/catchOrDeclare.html){website}
---

# The distinction between checked and unchecked exceptions


---

## Content

In Java, exceptions are objects which are created when an error occurs within a method. Exceptions can be divided into *checked* and *unchecked* exceptions.

Checked exceptions are exceptions which a program should be able to anticipate and recover from. These are often caused by invalid user inputs.

For Example: 

```java
Scanner scanner = new Scanner(System.in);
System.out.print("Enter a file name: ");
System.out.flush();
String filename = scanner.nextLine();
try {
 File file = new File(filename);
} catch (FileNotFoundException e) {
 // Handle exception e
}

```

Unchecked exceptions are usually caused by errors in a program's logic. These exceptions are not expected to be caught and the program is not expected to recover from them. The origin of the error should be eliminated. For Example:

```java
for (int i = 0; i < arr.length; i++) {
 doSomethingTo(arr[i+1])
 // when i reaches arr.length-1
 // an IndexOutOfBounds exception
 // will be thrown.
}
```
