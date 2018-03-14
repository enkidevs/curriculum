---
author: adamMontgomerie

levels:

  - medium

type: normal

category: must-know

tags:

  - annotations

  - meta-annotations

  - javadoc

  - documentation


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}'


---

# Including annotations in Javadoc

---
## Content

By default, annotations are not included in Javadoc generated documentation. However, one can specify that an annotation should be included in Javadoc by using the `@Documented` meta-annotation.

For example:
```
@Documented
@Introduction {
  String authorName();
  String date();
}
```

---
## Practice

Suppose the following annotation. Complete the snippet so it will be included in the JavaDoc.

```
@???
@Enki
  String enki = "enki";
}
```


* `Documented` 
* `Document` 
* `JavaDoc` 
* `Javadoc`

---
## Revision

By default, annotations ??? included in JavaDoc.


* `are not` 
* `are`

