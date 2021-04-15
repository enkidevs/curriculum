---
author: adamMontgomerie
type: normal
category: tip
tags:
  - strings
  - substrings
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html){website}
---

# Use `String.split()` to split a string using regular expressions


---

## Content

`split` takes a regular expression and splits the string around occurrences of this expression into an array of strings.

```java
String s = "I ate 6 pancakes, 4
  digestives, 2 boxes of cherries, then
  I went to bed";
String[] sub1 = s.split(",");
String[] sub2 = s.split("\d");
```

In the example above, the original string will be split each time a `,` is encountered and stored in the array `sub1`. It will also be split each time a digit `(0-9)` is encountered and stored in `sub2`.

Splitting on `,`:

```java
[ "I ate 6 pancakes",
  "4 digestives",
  "2 boxes of cherries",
  "then I went to bed"
]
```

Splitting on `\d`:

```java
[ "I ate",
  "pancakes,",
  "digestives and",
  "boxes of cherries, then I went to bed"
]
```

Java’s split method ignores any trailing empty Strings.


---

## Quiz

### how does string splitting work?


What's the value of `l`?

```java
  int l = "Hi-there-are-you-alright---".split("-").length +
      "---Hi-there-are-you-alright".split("-").length;
```

 ???

- 13
- 10
- 16
- 12
