---
author: catalin
type: normal
category: feature
links:
  - '[www.javatpoint.com](http://www.javatpoint.com/Console-class){website}'
notes: |
  https://insights.enki.com/#/contrib/5597c334d07c503200b46e1a
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The `Console` class


---

## Content

The `Java.io.Console` class provides methods to access the character-based console device, if any, associated with the current *Java Virtual Machine*. This class is attached to the `System` console internally. 

`Console` class provide means to read text and passwords from the console.

To read a line as a `String`:

```java
Console console = System.console();
String myString = console.readLine();

```

To read a password as an array of `char`s:

```java
Console console = System.console();
char[] pw = console.readPassword();

```

If you read passwords using `Console` class, it will not be displayed to the user.

Keep in mind that this class does not have a high level of security and it is mostly used at development stage.


---

## Revision

If you would want to read a password as input from the user, you could use ??? class.

- Console
- Scanner
- BufferedReader
- Input
