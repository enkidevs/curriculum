---
author: pawel
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to list all files in a directory that match a filename extension in Java


---

## Content

Often we want to create a list of all files in a given directory that match a specific filename pattern, or more specifically, match the same filename extension. An elegant solution to this problem is presented below:

```java
Collection getConfigFiles(String dirName)
{
  File dir = new File(dirName);
  return FileUtils.listFiles(dir, 
      new WildcardFileFilter("*cfg"),
      null);

}
```

The third argument specifies in which subdirectories to extend the search. Pass `TrueFileFilter.INSTANCE` instead of **null** to search through *all* subdirectories.

*FileUtils* and *WildcardFileFilter* classes can be found in the `Apache Commons` package.


---

## Revision

Complete the method to get all the files that contain `enki` in their name, on Desktop and in all other directories on Desktop:

```java
FileUtils.listFiles("~/Desktop", new 
???,
???);
```

- `WildcardFileFilter("*enki*")` 
- `TrueFileFilter.INSTANCE` 
- `WildcardDirectoryFilter("*")` 
- `TrueFilter.ALL` 
- `WildcardFileFilter("enki")`
