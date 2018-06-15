---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - loops

  - arrays


links:

  - '[www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=3){website}'


---

# Copying an array with `System.arraycopy()`

---
## Content

`System.arraycopy` can be used to copy the contents of an array to a new location in a more concise way than using a loop. For example, to copy content from `src` to `dest.`

```
String[] src = {"a","b","c"};
String[] dest = new String[src.length];
```
rather than using a loop like this
```
for(int i = 0; i < src.length; i++) {
  dest[i] = src[i];
}
```
we can use `System.arraycopy()`
```
System.arraycopy(src, 0 ,dest, 0, 
  src.length);
```

 
