# Typed Arrays
author: nene

levels:

  - medium

type: normal

category: how to

links:

  - >-
    [msdn.microsoft.com](https://msdn.microsoft.com/en-us/library/br212485(v=vs.94).aspx){website}

---
## Content

Typed arrays are array-like objects providing a mechanism for accessing raw binary data. Usually they're used to implement network protocols, cryptography algorithms, file format manipulations, and so on.

Typed arrays are made up of `buffers` and `views`. A buffer (implemented by an `ArrayBuffer` object) is an object that represents some data but does not provide a way to access its contents. That's when the view comes in - it provides a data type, starting offset, and number of elements. 

Create a chunk of data 16 bytes long:
```
var buffer = new ArrayBuffer(16);
```
Create a view that treats the data as 32-bit signed integers:
```
var int32View = new Int32Array(buffer);
```
Now the typed array is indexed and accessible:
```
for (var i = 0; i < int32View.length; i++) {
  int32View[i] = i * 2;
}
```

---
## Revision

What are **Typed Arrays** made of ?

???

*`buffers and views`
*`views and streams`
*`arrays and buffers`
*`iterators and arrays`
