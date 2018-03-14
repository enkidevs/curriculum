---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - file-io

  - users

  - metadata


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/fileAttr.html){website}'


---

# Metadata: setting a file's owner

---
## Content

The `UserPrincipalLookupService` can be used to lookup a user name defined as a string and store it as a `UserPrincipal` object:
```
UserPrincipal owner =
  file.getFileSystem()
  .getUserPrincipalLookupService()
  .lookupPrincipalByName("enki");
```

Once a `UserPrincipal` object has been acquired, it can be used to set the owner of a file by calling the `Files.setOwner` method:
```
Path file = Paths.get("home/file.txt");
Files.setOwner(file, owner);
```

---
## Revision

Create a new instance of  `UserPrincipal` for the username `tom`:
```
UserPrincipal owner = 
 path.???
.???
.???;
```

* getFileSystem()` 
* getUserPrincipalLookupService() 
* lookupPrincipalByName("tom")
* lookupPrincipalByName()
* getUserPrincipalLookupService("tom")

