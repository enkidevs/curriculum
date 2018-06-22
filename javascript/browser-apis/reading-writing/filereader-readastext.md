---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: must-know


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsText){website}'


---

# FileReader.readAsText()

---
## Content

The `readAsText()` method is used to read text files. It takes two parameters, the first is the file or blob object to read. The second is the encoding of the file, by default this is UTF-8.


Creating a new instance of File Reader.
```javascript
var reader = new FileReader();
```
Reading the text file. 
```javascript
reader.onload = function(e) {
  var text = reader.result;
}
reader.readAsText(file, encoding);
```

---
## Practice

Read from a text file:

```
reader.onload = function(e) {
   var text = reader.???;
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
var reader = new FileReader();
reader.onload = function(e) {
  var text = reader.result;
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

 
