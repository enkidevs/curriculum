---
author: tommarshall

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

standards:
  javascript.read-and-write-streams.0: 20
  javascript.node-standard-library-os.0: 20
  javascript.events-asynchronous-operations.1: 20

tags:
  - introduction
  - workout
  - deep

links:
  - '[Piping streams](https://www.sandersdenardi.com/readable-writable-transform-streams-node/){website}'

parent: readable-streams

aspects:
  - introduction
  - workout
  - deep


---
# Piping Readable Streams

---
## Content

Piping allows for data to be read from a source, and passed onto a destination without your application having to manage the flow of the data.

```javascript
var fs = require(‘fs’);
var rStream = fs.createReadStream(
  ‘file1.txt’);
var wStream = fs.createWriteStream(
  ‘file2.txt’);

rStream.pipe(wStream);
```

The `pipe()` function is used in the above example to write the content of `file1` (which was read into `rstream`) into file2 using `wstream`. `pipe()` manages the data flow meaning there’s no need to worry about fast or slow data. Also, because `pipe()` returns the destination stream it can be used chain multiple streams together.

---
## Practice

How would you pipe the data from a readStream of `fileA.txt` to a writeStream of `fileB.txt`, both created through the `fs` module? Basically you have to move all the data from `fileA` to `fileB`.

```javascript
var fs = require('fs')

var r = ???(???)
var w = ???.???(???)

???.???(???)
```

* fs.createReadStream
* 'fileA.txt'
* fs
* createWriteStream
* 'fileB.txt'
* r
* pipe
* w
* fs.readStream
* readStream
* writeStream
* fs.writeStream
* transfer
* move
* fileA
* fileB

---
## Revision

Which function is used for piping data from a source to a destination?

???

* pipe()
* pipeto()
* newpipe()
* transfer()
* trasport()
* copy()
* source()
* move()
 
