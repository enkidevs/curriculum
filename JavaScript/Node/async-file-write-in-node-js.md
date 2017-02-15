# Async File Write in Node.js
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_writefile_file_data_options_callback){website}

---
## Content

The File System (FS) module provides file I/O. You can use `fs.writeFile` to **asynchronously write data to a file**. The data can be a string or a buffer.

The syntax is:
```
fs.writeFile(file, data[, options],
callback)
```
`file` is the filename or descriptor and `data` is a string or buffer.
The `options` parameter can be a string representing the `encoding` (eg: `utf8`) or an object with `encoding`. `mode` and `flag` properties. `callback` is a function to invoke when the write completes, it receives an error argument on error or no arguments if successful.

For example:
```
fs.writeFile('msg.txt',
'Hello enki',
function (err) {
  if (err) throw err;
  console.log('it\'s ok');
});
```
Note: The file specified must support writing and the file is overwritten if it already exists.

It is not recommended to use `fs.writeFile` multiple times on the same file without waiting for the callback.  Use `fs.createWriteStream` instead.
