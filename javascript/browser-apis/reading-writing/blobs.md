---
author: tommarshall
type: normal
category: must-know
links:
  - '[Blob](http://www.javascripture.com/Blob){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Blobs


---

## Content

A binary large object, or *blob*, represents a file-like object of immutable[1] raw data. It represents data that isn't in JavaScript's standard format[2]. You use `FileReader` to read data from a blob.

A `Blob` has two components, the blob **parts** and **type**.

![blob-composition](https://img.enkipro.com/2419e9a5221d44d4ccb1ac9f38c8cb75.png)

Creating a `Blob` is done through the constructor:

```js
new Blob(parts, options);
```

The `parts` argument is an *array of values*, while `options` is an *optional object*. In the `options` you can specify:

- `type` (usually a MIME-type[3] like `image/png`)
- `endings`[4]

Now, let's create a `Blob`:

```javascript
let blob = new Blob(
  ["<html>...</html>"],
  { type: 'text/html' }
);
```

> 💡 The first argument **must** be an array.

A blob can be very large, meaning it can contain audio and video data. They can be created on-the-go, and used as files when coupled with blob URLs[5].

Although blobs aren't particularly useful on their own, their redeeming feature is being able to be used in many calls that are meant for `File`s.

For example, a `Blob` could represent a temporary file, which can then be linked to and treated as being a file on a web server.


---

## Practice

Which of these is the correct way of creating a `Blob`?

```js
let a = new Blob(
  "<img src='#' >",
  { type: 'text/html' }
);

let b = new Blob(
  ["<img src='#' >"]
);

let c = Blob(
  ["<img src='#' >"],
  { type: 'text/html' }
);
```

???

- b
- a
- c


---

## Revision

Complete the definition of the `Blob` constructor.

```js
new ???(
  ???,
  {
    ???: 'text/html',
    ???: 'transparent'
  }
);
```

- `Blob`
- `["parts"]`
- `type`
- `endings`
- `blob`
- `"parts"`
- `mimeType`
- `newLines`


---

## Footnotes

[1:Immutable Data]
Immutable means that after the data is created, it can't be modified.

[2:Binary Objects]
Binary objects are formed of binary numbers. Binary numbers are expressed, as the name suggests, in the binary system meaning that they can only take the form of two symbols (`0` and `1`). 

For example, you can convert `I love Enki!` to binary numbers:

```plain-text
01001001 00100000 01101100 
01101111 01110110 01100101
00100000 01000101 01101110 
01101011 01101001 00100001
```

[3:MIME Types]
Media (or MIME) types are a two-part identifier for file formats and format contents transmitted on the internet. MDN keeps an updated list of the [most common types](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types).

[4:Endings]
This option is used to choose whether you want to transform end-of-line characters in the `Blob` to correspond to current Operating System newlines (e.g. `\r\n` or `\r`). It can take two values:

- `transparent` (which means do nothing)
- `native` ( which means transform)

[5:Blob URLs]
`Blob`s can be used as an URL for links, images (or other elements) to show its contents.

Also, you can download or upload `Blob` objects, with the type becoming `Content-Type`.
 
