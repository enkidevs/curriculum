# Writable Streams
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

---
## Content

The `write()`  method is used to write data to a writable stream. Take the following example:
 ```
 var fs = require(‘fs’);
 var rstream = fs.createReadStream
                          (‘file.txt’);
 var wstream = fs.createWriteStream
                          (‘output.txt’);

 rstream.on(‘data’, function(data) {

   wstream.write(data);

 });
 ```
The above example creates both a readable stream and a writable stream, it then creates a callback function which is called when data is read from the readable stream, this data is then written to `output.txt` using the writable stream.

The `write()` method returns a boolean value acting as an indicator to whether the write operation was successful, if the write was successful and more data can now be written then `true`  is returned, if the write operation was unsuccessful then `false` is returned.

---
## Practice

Complete the code snippet to write data to the writable stream:

```
rstream.on('???', function(data) {
  wstream.???(data);
});
```

* `data`
* `write`
* `input`
* `event`
* `callback`
* `print`

---
## Revision

Which method is used when writing data to a writable stream?

```
stream.???(data);
```

* `write`
* `input`
* `print`
