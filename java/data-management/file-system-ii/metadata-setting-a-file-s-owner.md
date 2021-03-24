---
author: adamMontgomerie
type: normal
category: tip
tags:
  - file-io
  - users
  - metadata
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/fileAttr.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Metadata: setting a file's owner


---

## Content

The `UserPrincipalLookupService` can be used to lookup a user name defined as a string and store it as a `UserPrincipal` object:

```java
UserPrincipal owner =
  file.getFileSystem()
  .getUserPrincipalLookupService()
  .lookupPrincipalByName("enki");
```

Once a `UserPrincipal` object has been acquired, it can be used to set the owner of a file by calling the `Files.setOwner` method:

```java
Path file = Paths.get("home/file.txt");
Files.setOwner(file, owner);
```


---

## Revision

Create a new instance of `UserPrincipal` for the username `tom`:

```java
UserPrincipal owner = 
 path.???
.???
.???;
```

- getFileSystem()` 
- getUserPrincipalLookupService() 
- lookupPrincipalByName("tom")
- lookupPrincipalByName()
- getUserPrincipalLookupService("tom")
