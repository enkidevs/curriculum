---
author: tommarshall
levels:
  - beginner
  - basic
  - medium
  - advanced
type: normal
standards:
  javascript.read-and-write-streams.1: 20
  javascript.node-standard-library-os.0: 20
  javascript.events-asynchronous-operations.1: 20
tags: []
category: must-know
links:
  - '[Writable Streams](https://gist.github.com/joyrexus/10026630){website}'
parent: chaining-readable-streams
aspects:
  - introduction
  - workout
  - deep
---

# Writable Streams


---

## Content

The `write()`  method is used to write data to a writable stream. Take the following example:

```javascript
var fs = require(‘fs’);
var rstream = fs.createReadStream
                        (‘file.txt’);
var wstream = fs.createWriteStream
                        (‘output.txt’);

rstream.on(‘data’, function(data) {

 wstream.write(data);

});
```

The above example initiates both a readable stream and a writable stream. A callback function is then created which is called when data is read from the readable stream, this data is then written to `output.txt` using the writable stream.

The `write()` method returns a boolean value acting as an indicator to whether the write operation was successful. If the write was successful and more data can now be written then `true`  is returned. If the write operation was unsuccessful then `false` is returned.


---

## Practice

Complete the code snippet to write data to the writable stream:

```javascript
rstream.on('???', function(data) {
  wstream.???(data);
});
```

* data
* write
* input
* event
* callback
* print


---

## Revision

Which method is used when writing data to a writable stream?

```javascript
stream.???(data);
```

* write
* input
* print

