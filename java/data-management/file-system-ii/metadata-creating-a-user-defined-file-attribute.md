---
author: adamMontgomerie
type: normal
category: tip
tags:
  - file-io
  - metatypes
  - files
  - file-attributes
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/fileAttr.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Metadata: creating a user-defined file attribute


---

## Content

It is possible to create user-defined file attributes, besides default ones. This comes in handy if you need a way to verify if the file was proofread or encrypted.

To do this, we first need to create a `UserDefinedFileAttributeView`:

```java
Path file = Paths.get("home" 
   + File.separator + "file.txt");
UserDefinedFileAttributeView view = 
  Files.getFileAttributeView(
    file,
    UserDefinedFileAttributeView.class
  );
```

`view` can then be used to define a new file attribute:

```java
String attrName = "encrypted";
String attrVal = "yes";
view.write(
  attrName,
  Charset.defaultCharset()
         .encode(attrVal));
```

Above, the method `write` takes a `ByteBuffer` as the second argument, so we have to convert the value string.

You can then read the attribute value:

```java
 ByteBuffer readBuffer = 
  ByteBuffer.allocate(view.size(attrName));

 view.read(attrName, readBuffer);
 readBuffer.flip();

 String val = 
  new String(readBuffer.array(), "UTF-8");

 System.out.println(attrName+":"+ val);
```


---

## Practice

Write the attribute/value pair (both expressed as Strings) to the `view` object:

```java
view.???(???,
   Charset.defaultCharset()
          .???);
```

- `write` 
- `attr` 
- `encode(val)` 
- `encode` 
- `val` 
- `encode(attr)`


---

## Revision

Complete the code snippet to instantiate `view` variable:

```java
Path p = Paths.get("path");
UserDefinedFileAttributeView view =
 ???(
 ???,
 UserDefinedFileAttributeView.Class);
```

- `Files.getFileAttributeView` 
- `p` 
- `file` 
- `File.getFileAttributeView` 
- `view`
