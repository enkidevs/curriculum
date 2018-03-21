# FileReader.readAsArrayBuffer()
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - ''

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsArrayBuffer){website}

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Typed_arrays){website}

---
## Content

The `readAsArrayBuffer();` will read a *file* or *blob* object and produce an *ArrayBuffer*. 

You cannot work with the data contained in  *ArrayBuffers* directly but must user either a *typed array* or *DataView* object.


ArrayBuffers can be used to work with raw data containing complex types, convert file formats and when working with the XmlHttpRequest object and binary data.

Declaring a new File Reader instance.
```javascript
var reader = new FileReader();
```
Reading data as an array buffer and assign it to an array of 8 bit unsigned integers.
```javascript
reader.onload = function(e) {
  var chars  = 
  new Uint8Array(reader.result);
}
reader.readAsArrayBuffer(file);
```

---
## Revision

Complete the following JS code snippet declaring a new file reader instance and reading data from a file as an array buffer: 

```javascript
var reader = new ???();
reader.???(file);
```

* FileReader
* readAsArrayBuffer
* fReader
* file-reader
* read
* interpret
* readAsArray