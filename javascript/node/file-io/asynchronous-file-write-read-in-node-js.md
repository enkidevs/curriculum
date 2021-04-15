---
author: catalin
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [nodejs.org](https://nodejs.org/api/fs.html#fs_fs_readfile_file_options_callback){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Asynchronous File Write/Read in Node.js


---

## Content

The *File System* (**FS**) module provides file **I/O**. The methods have asynchronous and synchronous forms.

The last parameter of asynchronous methods will be a **callback function**. This function should have as the first parameter an **error**.

It is preferred to use asynchronous method over synchronous method as the formers never block program execution.

Write data to file:

```javascript
fs.writeFile(file, data[,options], callback)
```

`data` can be a string or a buffer. Options include `encoding` (default **utf8**), `flag` and `mode`.

Read data from file:

```javascript
fs.readFile(file[, options], callback)
```

Options include `encoding` and `flag`.

The **callback** can be defined as a function : `function (err, data)` where `data` is the actual data from the file.


---

## Practice

Which method of `fs` writes to a file asynchronously?

???

Which method reads from a file asynchronously?

???

- writeFile
- readFile
- write
- read
- writeAsync
- readAsync
- writeFileAsync
- readFileAsync


---

## Revision

What type of methods are recommended to be used for file writing/reading so that program execution is never blocked?

???

Which NodeJS module exposes methods for file writing and reading?

???

In this module, which method is meant to read from files asynchronously?

???

- asynchronous
- fs
- readFile
- synchronous
- doesn't matter
- path
- file
- file-system
- readFileAsync
- read
- fileRead
