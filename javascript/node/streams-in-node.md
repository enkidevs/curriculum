# Streams in **Node**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - '[github.com](https://github.com/substack/stream-handbook){website}'

  - >-
    [www.sitepoint.com](http://www.sitepoint.com/basics-node-js-streams/){website}

---
## Content

**Streams** can be used in **Node** in order to make **I/O** operations more efficient, by processing data sequentially.

**Streams** are `EventEmitters` with special methods , unix pipes that let you read from a source and `pipe` to another.

In a simple **Node** *HTTP server* `response ` and `request` are specialized streams (writeable and readable).

Create a readable stream:
```javascript
readable = fs.createReadStream('file.txt');
```
Read from a stream with a `data` event callback:
```javascript
readStream.on('data', function(chunk) {
    data+=chunk;
});
```
`End` event to notify the end of a stream:
```javascript
readStream.on('end', function() { } );
```
Create a writeable stream:
```javascript
writeable = fs.createWriteStream('file.txt')
```
Write to a writeable Stream and end it:
```javascript
writeable.write('data');
writeable.end('Ended.');
```

Pair input and output with `pipe()`:
```javascript
readable.pipe(writable);

```

---
## Practice

Complete the code so that you read from a stream with a `str` event callback:

```javascript
???.on('???', function(chunk( {
   str+=chunk;
});
```

* `readStream`
* `str`
* `readable`
* `streamRead`
* `data`
* `argv`

---
## Revision

Complete the code such as `myFunction()` is called at the end of a stream:
```js
readStream.???(???, myFunction() );

```

*`on`
*`'end'`
*`'data'`
*`end`
