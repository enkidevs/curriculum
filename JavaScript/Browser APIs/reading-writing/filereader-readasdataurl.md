# FileReader.readAsDataURL()
author: tommarshall

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: must-know

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsDataURL){website}

---
## Content

The `readAsDataURL()` method is used with file or blob objects. When the read operation is complete it returns a *data URL* with the files contents as base 64 encoded string.

This functionality is often used to create thumbnail previews of uploaded image files.

Creating a new instance of File Reader:
```JavaScript
var reader = new FileReader();
```
Reading the data URL:
``` JavaScript
reader.onload = function(e) {
  var dataURL = reader.result;
}
reader.readAsDataURL(file);
```

---
## Revision

Complete the following JS code snippet to declare a file reader and to read in the data URL:

```javascript
var reader = ??? FileReader();
reader.???(file);
```

* `new`
* `readAsDataURL`
* `typeof`
* `env`
* `readURL`
* `read`
* `URL`
