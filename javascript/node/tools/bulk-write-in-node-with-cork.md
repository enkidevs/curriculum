---
author: catalin

levels:
  - advanced
  - medium

type: normal

category: how to

standards:
  javascript.node-standard-library-os.0: 20
  javascript.read-and-write-streams.1: 20

tags:
  - introduction
  - workout

links:
  - '[github.com](https://github.com/nodejs/node/wiki/API-changes-between-v0.10-and-v4#writable-streams){website}'

aspects:
  - introduction
  - workout


---
# Bulk-Write in **Node** with `cork()`

---
## Content

Bulk writing/buffering on *writeable* streams is possible in **Node**.
Using the `cork()`  and `uncork()` API calls, one can specify a range where bulk writes will occur.

```
writable.cork()
```
Using the `cork()` method, the end user modifies the behaviour of writeable streams to buffering. Consequently, streams should accept new writes as long as it does not exceed the `highWaterMark` option passed to `Writable()`.
```
writable.uncork()
```
`uncork()` resets the behaviour and attempts to bulk-write all buffered writes to the underlying resource.

Flushing of buffered data can be also achieved by calling the `.end()` method.

---
## Practice

Which two API calls can be used to specify a range of where bulk writes will occur?

???

* `cork()` and `uncork()`
* `write()` and `end()`
* `writable()` and `unwritable()`

---
## Revision

What method is used to flush all buffered data from a stream?

???


* end()
* uncork()
* cork()
 
