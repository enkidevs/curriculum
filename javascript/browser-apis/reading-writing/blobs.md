---
author: tommarshall

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:
  - '[Blob](http://www.javascripture.com/Blob){website}'

---

# Blobs

---
## Content

A binary large object, or *blob*, represents a file-like object of immutable raw data. It represents data that isn't in JavaScript's standard format. You use `FileReader` to read data from a blob.

To create a blob, use the blob constructor:
```javascript
let debug = {
  hello: "world",
};

let blob = new Blob(
  [JSON.stringify(debug, null, 2)],
  {
    type: "application/json",
  }
);
```

A blob can be very large, so this means it can contain audio and video data. They can be created dynamically, and used as files when coupled with blobl URLs.

Although blobs aren't particularly useful when on their own, their redeeming feature is being able to be used in many calls that are meant for `File`s.

For example, a `Blob` could represent something like a temporary file, which can then be linked to and treated as being a file on a web server.

---
## Practice

Use the blob constructor to create a blob:

```javascript
let debug = {
  hello: "Enki"
};

let blob = new ???(
  [JSON.???(debug, null, 2)],
  {
    type: "application/json",
  }
);
```


* `Blob`
* `stringify`
* `Instance`
* `slice`
* `start`
* `config`
* `Class`

---
## Revision

What method should be used to create a subset of a blob?
```javascript
let blob = instanceOfBlob.???([
 start, [, end [, contentType]]
]);
```

* `slice`
* `subset`
* `splice`
* `concat`
* `stringify`