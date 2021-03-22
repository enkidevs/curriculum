---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - naming-conventions
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2014/10/10-java-best-practices-to-name-variables-methods-classes-packages.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The trade-off between short and descriptive names


---

## Content

Using excessively long names for classes, methods or variables can make code more difficult to write and format. 

On the other hand, using names that are too short can make code harder to understand in the case that the name does not adequately describe its purpose.

A good general rule to follow is to make sure that a name is as short as possible while still describing its purpose.

```plain-text
public String n();
public String retrieveFirstAndLastName();
public String getName();
```

For example, the first and second method names above are poor because it is not explanatory at all, or unnecessarily long. The third name strikes a good balance between length and descriptiveness.


---

## Practice

Which of the following methods is best named for finding the age of a person? 

???

- `getAge()` 
- `age()` 
- `getAgeOfPerson` 
- `num()`
