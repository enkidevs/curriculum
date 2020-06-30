---
author: adamMontgomerie
type: normal
category: tip
tags:
  - lists
  - arrays
  - collections
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=39){website}
---

# Use `Arrays.asList()` to initialise lists


---

## Content

Lists can be initialised concisely using `Arrays.asList()`. For example this:

```java
List<String> animals = new ArrayList<>();
animals.add("cat");
animals.add("dog");
animals.add("sea turtle");

```

can instead be written like this:

```java
List<String> animals = Arrays.asList(
"cat", "dog", "sea turtle");

```


---

## Practice

Complete the snippet such that it makes sense:

```java
List<String> enki = 
   ???.???(
   “enki”, “is”, “cool” );
```

- `Arrays` 
- `asList` 
- `Array` 
- `List` 
- `asArray` 
- `asArrayList` 
- `ArrayList`


---

## Revision

Complete the snippet such that it makes sense:

```java
List<String> myList = 
   Arrays.???(
   “one”, “two”, “three” );
```

- `asList` 
- `ArrayList` 
- `Array` 
- `StringList` 
- `List` 
- `asArray` 
- `asArrayList`
