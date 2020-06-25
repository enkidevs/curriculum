---
author: catalin

levels:
  - basic
  - advanced
  - medium
  - beginner

type: fillTheGap

category: tip

---

# Guess the class

---
## Content

Reckon you know most of Java's renowned classes? Fill the gaps as quick as possible with the missing bits of code to test your knowledge by matching classes with their methods.

---
## Game Content

```java
???
x.equals('abc'); // true
x.equalsIgnoreCase('ABC'); //true
```

* String x = "abc";
* ArrayList<Character> x = "abc";
* StringBuffer x=new StringBuffer("abc");

%exp
The only class in Java that supports both the `equals` and `equalsIgnoreCase` methods is `String`.
%

---

```java
???
s.push(5);
s.pop(); // 5
```

* Stack<Integer> s = new Stack<>();
* Queue<Integer> s = new Queue<>();
* List<Integer> s = new ArrayList<>();

%exp
Among the given answers, `Stack` is the only one which supports both `.push()`  and `.pop()` methods.

`.push()` - inserts a element in at the back of the stack

`.pop()` - returns the last element in the stack
%

---

```java
???.out.print("Enki");
```

* System
* Console
* Printer

%exp
`System` is a final class of `java.lang` package while `.out` is a static variable of this class.

Calling `System.out`'s `print` method will output the given argument in the console.
%

---

```java
???
a.canWrite(); // true
a.getAbsolutPath(); // /home/path/file.txt
```

* File a = new File("file.txt");
* Document a = new Document("file");
* String a = new String("file.txt");

%exp
The `java.io.File` class provides both the `.canWrite()` and `.getAbsolutePath()` methods.

`.canWrite()` - returns `true` or `false` if the application can write to that file

`.getAbsolutePath()` - returns the absolute path of the denoted file
%

---

```java
double x = 5;
double y = 10.2;
System.out.print(x + ???.floor(y)); // 15.0
```

* Math
* Double
* MathContext

%exp
Class `math` supports `.floor()` method.

`.floor()` method returns an approximate value to the nearest bigger `int` number.
%

---

```java
???
Matcher m = a.matcher("xowEn");
boolean b = m.matches();
```

* Pattern a = Pattern.compile("x.*");
* String a = "xowEn";
* Regex a = new Regex.compile("x.*");

%exp
Class `Pattern` has the `.matcher()` method implemented.

It checks whether the string given as parameter matches the given regular expression.
%
 