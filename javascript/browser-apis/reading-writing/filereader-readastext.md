---
author: tommarshall

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

links:

  - '[Official Documentation](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsText){documentation}'

---

# FileReader.readAsText()

---
## Content

The `readAsText()` method is used to read text files. It takes two parameters, the first is the file or blob object to read. The second is the encoding of the file, by default this is UTF-8.

Creating a new instance of File Reader.

```javascript
let reader = new FileReader();
```

Reading the text file.

```javascript
reader.onload = function(e) {
  let text = reader.result;
};
reader.readAsText(file, encoding);
```

---
## Practice

Read from a text file:

```
reader.onload = function(e) {
  let text = reader.???;
}
reader.readAsText(file, ???);
```


* `result`
* `encoding`
* `reader`
* `file`
* `readAsText`
* `readFile`
* `openFile`
* `onload`

---
## Revision

Read from a text file:
```
let reader = new FileReader();
reader.onload = function(e) {
  let text = reader.result;
}

???.???(file,encoding);
```


* `reader`
* `readAsText`
* `onload`
* `read`
* `readText`
* `readFile`
* `file`
 
