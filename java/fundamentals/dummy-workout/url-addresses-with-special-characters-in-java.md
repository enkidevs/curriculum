---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - www

  - url

  - net

---
# URL addresses with Special characters in Java

---
## Content

Sometimes URLs might contain special characters, we need to encode to make them legal.

```java
http://example.com/hello world/
```

We can use `java.net.URI` class to ensure proper encoding. Sample code could look like:

```java
URI uri = new URI("http", "example.com",
          "/hello world/", "");
URL url = uri.toURL();
```
 
