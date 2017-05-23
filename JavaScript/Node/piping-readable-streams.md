# Piping Readable Streams
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal


category: must-know

parent: readable-streams

links:
- '[Piping streams](https://www.sandersdenardi.com/readable-writable-transform-streams-node/)'

---
## Content

Piping allows for data to be read from a source, and passed onto a destination without your application having to manage the flow of the data.

```
var fs = require(‘fs’);
var rStream = fs.createReadStream
                          (‘file1.txt’);
var wStream = fs.createWriteStream
                         (‘file2.txt’);

rstream.pipe(wStream);
```

The `pipe()` function is used in the above example to write the content of file1 (which was read into `rstream`) into file2 using `wstream`. `pipe()` manages the data flow meaning there’s no need to worry about fast or slow data. Also, because `pipe()` returns the destination stream it can be used chain multiple streams together.

---

---
## Revision

Which function is used for piping data from a source to a destination?
???

* `pipe()`
* `pipeto()`
* `newpipe()`
