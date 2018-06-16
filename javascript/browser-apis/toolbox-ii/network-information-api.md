---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[code.tutsplus.com](http://code.tutsplus.com/tutorials/html5-network-information-api--cms-21598){website}'


---

# Network Information API

---
## Content

The *Network Information API* provides information about the system's connection. It's used to choose either high definition or low definition content for a user, dependent on their connection. 

The API has a *`NetworkInformation`* interface and a single property to the Navigator interface: *`Navigator.connection`*.

This example watches for changes to the user's connection.

Declaring the connection and type.
```javascript
var connection = navigator.connection || 
              navigator.mozConnection || 
              navigator.webkitConnection;
var type = connection.type;
```
Listener for a change to the user's connection.
```javascript
connection.addEventListener('typechange', 
           updateConnectionStatus);
```
Function to output for any change to the user's connection if called by the listener.
```javascript
function updateConnectionStatus() {
  console.log("Connection type is change \
  from " + type + " to " + connection.type);
}
```

---
## Practice

Declare the connection and type:

```javascript
var connection = ???.connection ||
                 navigator.??? ||
                 navigator.???;
var type = connection.type;
```


* `navigator`
* `mozConnection`
* `webkitConnection`
* `connection`
* `apiConnection`
* `statusConnection`
* `eventConnection`

---
## Revision

Listen for a change in the user connection:
```javascript
// assume connection is initialised
connection.addEventListener('???',
  handlingFunction);
```


* `typechange`
* `type`
* `change`
* `update`
* `statusChange`

 
