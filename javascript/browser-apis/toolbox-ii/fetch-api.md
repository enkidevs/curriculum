---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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

What is the required argument the `fetch()` takes? 

???

- The path to the resource you want to fetch.
- The network name.
- An int value stating the number of files to fetch.


---

## Revision

Which interface for fetching resources supports promises natively?

???

- `fetch`
- `XMLHttpRequest`
 
