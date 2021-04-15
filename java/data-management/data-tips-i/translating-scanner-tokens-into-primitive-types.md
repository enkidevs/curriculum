---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - scanner
  - file-io
  - streams
  - buffered-streams
  - tokens
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/scanning.html){website}
  - >-
    [javatutorialhq.com](http://javatutorialhq.com/java/util/scanner-class-tutorial/usedelimiter-string-pattern-method-example/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Translating `Scanner` tokens into primitive types


---

## Content

The `Scanner` class can be used to break an input into tokens separated by delimiters. `Scanner` also has methods to translate each token into one of Java's primitive types.

Delimiters are string *patterns* and are set in the following way:

```java
Scanner s = new Scanner(input);
s.useDelimiter(pattern);
```

If we need to read a file containing a set of integers, and calculate the total, we can use `Scanner`'s `nextInt` method:

```java
int sum = 0;
//create a new instance of Scanner
Scanner s = new Scanner(
  new BufferedReader(
    new FileReader("in.txt")));
/*tokenize the input file and 
convert to integers*/
while (s.hasNext()) {
  if (s.hasNextInt()) {
    sum += s.nextInt();
  } else {
    s.next();
  }
}
```

In the example above, we iterate through the file, tokenizing each value and converting it to an integer before adding it to `sum`.


---

## Practice

What will the value of `sum` be for the given input?

```plain-text
3 5 test 6
```

???

- 14
- NumberFormatException
- 8test6
- 14test
- 8


---

## Revision

Which method of the *Scanner* class returns the next double value read?

???

- nextDouble()
- hasNextDouble()
- getDouble()
- parseDouble()
