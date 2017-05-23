# Readable Streams
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: what-are-streams

links:
- '[Readable Streams](https://nodejs.org/api/stream.html)'

---
## Content

A readable stream reads data from a source. A source could be a file on a system, another stream, an array or buffer in memory or a variety of other options. Streams are `EventEmitters`, therefore they emit a number of events whilst running.

The most efficient way of reading data from a stream is to add a *listener* to the *data* event and attach a callback. When data is available to be read, the (readable) stream will emit a data event causing the callback to run, for example:

```
// require file system
var fs = require(‘fs’);
var rstream = fs.createReadStream
                        (‘file.txt’);
var data = ‘’;

rstream.on(‘data’, function(avail) {

  data+=avail;

});
```
Calling `fs.createReadStream` creates a readable stream, this stream then beings to flow once a callback has been attached.

A callback also needs to be added for when the stream has reached the end of the data:
```
rstream.on(‘end’, function() {

  console.log(data);

});
```

Encoding can be set on the stream like follows:
```
rstream.setEncoding(‘utf8’);
```


---
## Practice

Which of the following Node modules needs to be required prior to a readable stream being created?
???

* File system
* http
* readStream

---
## Revision

What method is called to create a static readable stream?

```
var stream = fs.???('file.txt');
```

* `createReadStream`
* `staticReadableStream`
* `readableStream`
