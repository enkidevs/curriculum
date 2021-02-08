---
author: catalin
type: normal
category: best-practice
tags:
  - workout
links:
  - >-
    [www.mariocasciaro.me](http://www.mariocasciaro.me/the-strange-world-of-node-js-design-patterns){website}
  - >-
    [blog.risingstack.com](https://blog.risingstack.com/fundamental-node-js-design-patterns/){website}
  - '[through](https://www.npmjs.com/package/through){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Middleware/pipeline design pattern


---

## Content

The **middleware** or **pipeline** concept is used everywhere in Node.js. They represent a series of processing units connected subsequently: **the output of one unit is the input for the next one**.

```javascript
function(/*input/output */, next) {
  next(/* err and/or output */)
};
```

**Koa** framework does it like this:

```javascript
app.use = function(fn) {
  this.middleware.push(fn);
  return this;
};
```

This concept is usually implemented through `async.waterfall` or `async.auto`:

```javascript
async.waterfall([
  function(callback) {
    callback(...);
  },
  function(args, callback){
    callback(...);
  }
]};
```

Famous Node.js streams also use the concept of pipelining:

```javascript
fs.createReadStream("file.gz")
  .pipe(zlib.createGunzip())
  .pipe(through(function write(data) {
      //handle data
      this.queue(data);
   })
  //write to your file
  .pipe(fs.createWritableStream("out.txt"));
```


---

## Practice

Describe the Middleware/pipeline design pattern:

the ??? of one unit is the ??? for the next one.

- output
- input
- error
- prototype


---

## Revision

Which design pattern can you observe in the following snippet which archives `raw.txt`?

```javascript
fs.createReadStream('raw.txt')
  .pipe(zlib.createGzip())
  .pipe(fs.createWriteStream('raw.gz'))
```

???

- middleware/pipeline
- factory
- process-nexttick
- builder
- singleton
- prototype
- waterfall
