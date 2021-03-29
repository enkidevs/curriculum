---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [AVERAGEIF](https://support.google.com/docs/answer/3256529?hl=en){documentation}
  - >-
    [COUNTIF](https://support.google.com/docs/answer/3093480?hl=en){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Function Example


---

## Content

Now, let's take a look at some examples.

Using the following values, let's average all the **positive numbers**.

![data-set](https://img.enkipro.com/d8afaaa2373c1ce02903a9ef7ff3aa1e.png)

To do this we would write:

```plain-text
=AVERAGEIF(
  A1:A5,
  ">=0"
)
```

And the result is:

![averageif-result](https://img.enkipro.com/348fb8661753c0da014a2a9a790b6c9f.png)

Now, let's say we have a table containing the student's name and their grade:

![countif-data-set](https://img.enkipro.com/b040127f655aef7cf214447a0da230d4.png)

We want to count all students that received a passing grade (greater than or equal to six). We would write:

```plain-text
=COUNTIF(
  D2:D5,
  ">=6"
)
```

The result of this function is:

![countif-result](https://img.enkipro.com/d4f763bb2541cb19f2b8751ea75f9032.png)


---

## Practice

Count the values in cells `A1:A6` **only if** they are lower than two.

```plain-text
=???(
  ???,
  "???"
)
```

- COUNTIF
- A1:A6
- <2
- AVERAGEIF
- "A1:A6"
- "<2"


---

## Revision

Average the values in cells `D2:D8` **only if** they are not equal to one.

```plain-text
=???(
  ???,
  "???"
)
```

- AVERAGEIF
- D2:D8
- <>1
- COUNTIF
- "D2:D8"
- "<>1"
