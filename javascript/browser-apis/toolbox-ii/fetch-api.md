---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch){website}'


---

# Fetch API

---
## Content

The *Fetch API* provides an interface to fetch resources from across a network. 

The `fetch()` method is used for making requests and fetching resources. It takes one compulsory argument - the path to the resource you want to fetch.

 It returns a promise that resolves to the response to that request, whether it's successful or not.

It provides a more powerful and flexible interface than `XMLHttpRequest`.

Example of fetch response handling:
```javascript
var myHeaders = new Headers();

var myOptions = { method: 'GET',
               headers: myHeaders,
               mode: 'cors',
               cache: 'default' };

fetch('/the/url', myOptions)
  .then(function(response) {
    return // ... 
  }).then(function(returnValue) {
    // ...
  }).catch(function(error) {
    console.log("Problem occurred: " + 
                  error.message);
  });
```

---
## Practice

What is the compulsory argument the `fetch()` takes? ???

* The path to the resource you want to fetch.
* The network name.
* An int value stating the number of files to fetch.

---
## Revision

Which interface for fetching resources is more powerful?

???

* `fetch`
* `XMLHttpRequest`

 
