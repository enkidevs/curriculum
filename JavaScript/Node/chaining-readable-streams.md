# Chaining Readable Streams
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: piping-readable-streams

links:

  - '[Chaining](http://www.naeemrana.com/node-js/node-js-streams-pipe-and-chaining/)'

---
## Content

Chaining is where multiple pipes are used to move (pipe) data along a path where it can be read, written to or modified.

Take the following example:
```
var fs = require(‘fs’);
var zlib = require(`zlib’);

fs.createReadStream(‘file.txt.gz’)
  .pipe(zlib.createGunzip())
  .pipe(fs.createWriteStream(‘final.txt’));
```

Here, a readable stream is created which is piped into a second stream, `zlib.createGunzip()`, to unzip the content passed to it. The final pipe chains the unzipped content to the writable stream which writes the data to the specified file.

---
## Practice

Complete the following snippet such that the output of the first stream is used as input for the second one:

```
var fs = require("fs");

fs.createReadStream('in.txt')
  .???(fs.createWriteStream(out.txt));

```

* `pipe`
* `chain`
* `stream`
* `feed`
* `input`
* `output`

---
## Revision

Which function is used to chain streams together?

???

* `pipe()`
* `new-pipe()`
* `chain()`
