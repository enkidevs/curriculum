---
author: tommarshall
type: normal
category: feature
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsArrayBuffer){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Typed_arrays){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# FileReader.readAsArrayBuffer()


---

## Content

The `readAsArrayBuffer()` method will read a *file* or *blob* object and produce an *ArrayBuffer*.

You cannot work with the data contained in *ArrayBuffers* directly, but can access it via a `DataView` object. The buffer and the view make together a **typed array**.

ArrayBuffers can be used to work with raw data containing complex types, convert file formats and when working with the `XmlHttpRequest` object and binary data.

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

## Practice

Complete the following code snippet such that the `file` object is read as an array buffer?

```javascript
var reader = new ???();
reader.???(file);
```

- FileReader
- readAsArrayBuffer
- fReader
- file-reader
- read
- interpret
- readAsArray


---

## Revision

Which method of the `FileReader` class can be used to read data as an array buffer?

```javascript
const reader = new FileReader()
reader.???()
```

- readAsArrayBuffer
- readAsBuffer
- readTypedArray
- readArray
- readBuffer
 
