---
author: tommarshall
type: normal
category: must-know
links:
  - '[Readable Streams](https://nodejs.org/api/stream.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Readable Streams


---

## Content

A readable stream reads data from a source. A source could be a file on a system, another stream, an array or buffer in memory or a variety of other options. Streams are `EventEmitters`, therefore they emit a number of events whilst running.

The most efficient way of reading data from a stream is to add a *listener* to the *data* event and attach a callback. When data is available to be read, the (readable) stream will emit a data event causing the callback to run, for example:

```javascript
let fs = require("fs");
let rstream = fs.createReadStream(
  "file.txt"
);
let data = "";

rstream.on("data", function (avail) {
  data += avail;
});
```

Calling `fs.createReadStream` creates a readable stream, this stream then begins to flow once a callback has been attached.

A callback also needs to be added for when the stream has reached the end of the data:

```javascript
rstream.on("end", function () {
  console.log(data);
});
```

Encoding can be set on the stream like follows:

```javascript
rstream.setEncoding(‘utf8’);
```


---

## Practice

Which of the following Node modules needs to be required prior to a readable stream being created?

???

- File system
- http
- readStream


---

## Revision

What method is called to create a static readable stream?

```js
let stream = fs.???('file.txt');
```

- createReadStream
- staticReadableStream
- readableStream
