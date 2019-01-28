---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - json-converter

links:

  - >-
    [sites.google.com](https://sites.google.com/site/gson/gson-user-guide#TOC-Object-Examples){website}

---
# Converting Java object to/from JSON using Gson

---
## Content

Gson is a Java library that can be used to convert Java objects into their JSON representation and vice-versa. An example is shown below:

```java
class SampleClass {
  private int value = 42;
  private String message = "foo";
  sampleClass() { }
}

SampleClass obj = new SampleClass();
Gson gson = new Gson();
String json = gson.toJson(obj);
// json is {"value":42,"message":"foo"}
```
 
