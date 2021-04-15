---
author: adamMontgomerie
type: normal
category: tip
tags:
  - loops
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=88){website}
---

# Iterate without an index


---

## Content

Using a for-each or an Iterator instead of a traditional for-loop is a more concise and less error-prone solution. 

Traditional for-loops use an explicit loop index, which can, for example, lead to off-by-one errors. 

For-each loops avoid this problem as they do not have an explicit index.

```java
List<String> colors = Arrays.asList(
"red", "blue", "green");

//use
for(String color : colors){
  System.out.println(color);
}

//rather than
for (int i = 0; i < colors.size(); i++){
  System.out.println(colors.get(i));
}

```
