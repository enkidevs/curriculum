---
author: tommarshall

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:

  - '[www.javascripture.com](http://www.javascripture.com/Blob){website}'


---

# Blobs

---
## Content

A *blob* object represents an "almost file" object of raw data. It represents data that isn't in JavaScript's standard format. You use *FileReader* to read data from a blob.

To create a blob, use the blob constructor:
```javascript
let debug = {hello: "world"};
let blob = new Blob([
  JSON.stringify(debug, null, 2)
], {type : 'application/json'});
```

To create a subset of a blob, use the *slice()* method:
```javascript
let blob = instanceOfBlob.slice([
  start [, end [, contentType]]
]);
```

---
## Practice

Use the blob constructor to create a blob:

```javascript
let debug = {hello: "Enki"};

let blob = new ???([
    JSON.???(debug, null, 2)],
    {type : 'application/json'});
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
 
