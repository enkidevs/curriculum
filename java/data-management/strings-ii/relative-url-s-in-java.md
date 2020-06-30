---
author: pawel
type: normal
category: tip
tags:
  - http
  - www
  - url
---

# Relative URL's in Java


---

## Content

A relative URL contains only enough information to reach the resource relative to (or in the context of) another URL.

To create relative URL you can use code similar to the one below:

```java
URL myURL = 
    new URL("http://example.com/pages/");
URL page1 = new URL(myURL, "page1.html");
URL page2 = new URL(myURL, "page2.html");
```

The general form of this constructor is:

```java
URL(URL baseURL, String relativeURL)
```

The first argument is a URL object that specifies the base of the new URL. The second argument is a String that specifies the rest of the resource name relative to the base.
