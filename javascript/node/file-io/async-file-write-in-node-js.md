---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_writefile_file_data_options_callback){website}
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

# Async File Write in Node.js


---

## Content

The File System (FS) module provides file I/O. You can use `fs.writeFile` to **asynchronously write data to a file**. The data can be a string or a buffer.

The syntax is:

```javascript
fs.writeFile(file, data[, options],
  callback)
```

`file` is the filename or descriptor and `data` is a string or buffer.
The `options` parameter can be a string representing the `encoding` (eg: `utf8`) or an object with `encoding`. `mode` and `flag` properties. `callback` is a function to invoke when the write completes, it receives an error argument on error or no arguments if successful.

For example:

```javascript
fs.writeFile('msg.txt',
  'Hello enki',
  function (err) {
    if (err) throw err;
    console.log('it\'s ok');
});
```

Note: The file specified must support writing and the file is overwritten if it already exists.

It is not recommended to use `fs.writeFile` multiple times on the same file without waiting for the callback.  Use `fs.createWriteStream` instead.


---

## Practice

Suppose there is a custom file encoding named `xyz`.

Using the built-in File System module of NodeJS, how would you write "XXYYZ" to `myFile`? Remember you must manually set the encoding.

```javascript
const fs = require('fs')

???.???(???, ???,
  ???, (err) => {
    console.log(err)
  }
```

- fs
- writeFile
- 'myFile'
- 'XXYYZ'
- { encoding: 'xyz' }
- FS
- FileSystem
- writeFileAsync
- write
- new myFile()
- XXYYZ
- { xyz: true }
- { xyz }
- customEncode(xyz)


---

## Revision

Using the FileSystem module, write "hello" to `enki.txt`:

```javascript
const fs = require('fs')

???.???('???', "???")
```

- fs
- writeFile
- enki.txt
- hello
- FileSystem
- writeFileAsync
