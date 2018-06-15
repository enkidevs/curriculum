---
author: nene

levels:
  - medium

type: normal

category: how to

links:
  - '[msdn.microsoft.com](https://msdn.microsoft.com/en-us/library/br212485(v=vs.94).aspx){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray){website}'

---
# Typed Arrays

---
## Content

Typed arrays are array-like objects providing a mechanism for accessing raw binary data. Usually they're used to implement network protocols, cryptography algorithms, file format manipulations, and so on.

Typed arrays are made up of `buffers` and `views`.
A buffer (implemented by an `ArrayBuffer` object) is an object that represents some data but does not provide a way to access its contents.
That's when the view comes in - it provides a data type, starting offset, and number of elements.

Create a chunk of data 16 bytes long:

```javascript
var buffer = new ArrayBuffer(16);
```

Create a view that treats the data as 32-bit signed integers:

```javascript
var int32View = new Int32Array(buffer);
```

Now the typed array is indexed and accessible:

```javascript
for (var i = 0; i < int32View.length; i++) {
  int32View[i] = i * 2;
}
```

---
## Practice

What object is used to create a buffer for a typed array?

???

What object is used to create a view configured for 32-bit signed integers for a typed array?

???

* ArrayBuffer
* Int32Array
* Int32
* I32Arr
* Array
* Buffer

---
## Revision

What are **Typed Arrays** made of ?

???

* buffers and views
* views and streams
* arrays and buffers
* iterators and arrays
 
