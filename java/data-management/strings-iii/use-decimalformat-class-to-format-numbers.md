---
author: adamMontgomerie
type: normal
category: feature
tags:
  - strings
  - formatting
  - numbers
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/numberformat.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Use `DecimalFormat` class to format numbers


---

## Content

The `DecimalFormat` class can be used to specify custom formats for numbers.

```java
DecimalFormat commaFormat =
  new DecimalFormat("###,###");
DecimalFormat zeroFormat =
  new DecimalFormat("0000");
String a = commaFormat.format(123456);
//a: 123,456
String b = zeroFormat.format(5);
//b: 0005
```

In the `commaFormat` example, we have specified that there should be a comma after three digits using the `"###,###"` formatting string.

The `zeroFormat` example shows adding leading zeroes.


---

## Practice

What will be the value of `enki` string after the code snippet is ran?

```java
DecimalFormat myFormat = 
  new DecimalFormat("00000");
String enki = myFormat.format(33);
// enki = ???
```

- `00033`
- `33`
- `00000`
- `33000`
- `00330`


---

## Revision

What argument/s must be passed to the `DecimalFormat`  constructor to achieve the the String `13, 33, 44` from the number `133344` ?

???

- `"##, ##, ##"`
- `"##",  "##", "##"`
- `"dd, dd, dd"`
- `"dd",  "dd", "dd"`
