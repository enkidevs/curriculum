---
author: adamMontgomerie
type: normal
category: caveats
tags:
  - java-common-practises
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=214){website}
---

# 'From' is included while 'to' is excluded


---

## Content

As a convention, when specifying a range of values, the first value 'from' is included while the last value 'to' is excluded. 

For example in `String.substring(from, to)`, the character at position 'from' will be included in the substring, while the character 'to' will not.

> **Remember:** As with most programming languages, indexes in Java start from 0.

So, `"Enki".substring(1,3);` will return `"nk"`. The character at 1; 'n' was included and the character at 3; 'i' was excluded.

This convention also applies in other areas of the JDK such as `List.sublist(from, to)` and `Arrays.copyOfRange(T[], from, to)`.
 
