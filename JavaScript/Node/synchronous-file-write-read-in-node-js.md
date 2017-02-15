# Synchronous File Write/Read in Node.js
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_writefilesync_file_data_options){website}

  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_readfilesync_file_options){website}

---
## Content

The File System (FS) module provides file I/O. The methods have asynchronous and synchronous forms.

When using the synchronous form any exceptions are immediately thrown. It is only recommended to use this form during program startup.

Use `fs.writeFileSync`  to **write data to a file**:
```
fs.writeFileSync(file, data[, options])
```
This is the same syntax as `fs.writeFile` but it is synchronous and returns undefined rather than a callback function.

Use `fs.readFileSync` to **return the contents of a file**:
```
fs.readFileSync(file[, options])
```
This is the synchronous version of `fs.readFile`. It returns a string or a buffer.

---
## Revision

Synchronously write data to a file:
```javascript
fs.???(file, data)
```

*`writeFileSync`
*`writeSyncFile`
*`writeSync`
*`write`
*`writeFileAsync`
*`writeFile`
