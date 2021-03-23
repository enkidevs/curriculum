---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_writefilesync_file_data_options){website}
  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_readfilesync_file_options){website}
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

# Synchronous File Write/Read in Node.js


---

## Content

The File System (FS) module provides file I/O. The methods have asynchronous and synchronous forms.

When using the synchronous form any exceptions are immediately thrown. It is only recommended to use this form during program startup.

Use `fs.writeFileSync`  to **write data to a file**:

```javascript
const fs = require('fs')

fs.writeFileSync(file, data[, options])
```

This is the same syntax as `fs.writeFile` but it is synchronous and returns undefined rather than a callback function.

```javascript
fs.readFileSync(file[, options])
```

Use `fs.readFileSync` to **return the contents of a file**:

```javascript
// suppose file.txt
const fileContent =
  fs.readFileSync('./file.txt')
```

This is the synchronous version of `fs.readFile`. It returns a string or a buffer.


---

## Practice

Import the necessary module and fill in the gaps to read `file.txt` synchronously:

```javascript
const fs = ???

???.???('file.txt')
```

- require('fs')
- fs
- readFileSync
- fileReader
- file
- FileReader
- readFile
- readFileAsync
- readFileTxt


---

## Revision

Which method of `fs` can be used to write from a file in a synchronous fashion?

```javascript
const fs = require('fs')

fs.???(file, data)
```

- writeFileSync
- writeSyncFile
- writeSync
- write
- writeFileAsync
- writeFile
