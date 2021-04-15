---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [Network Information
    API](http://code.tutsplus.com/tutorials/html5-network-information-api--cms-21598){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Network Information API


---

## Content

The *Network Information API* provides information about the system's connection. It's used to choose either high definition or low definition content for a user, dependent on their connection.

The API has a *`NetworkInformation`* interface and a single property to the Navigator interface: *`Navigator.connection`*.

This example watches for changes to the user's connection.

Declaring the connection and type.

```javascript
let connection =
  navigator.connection ||
  navigator.mozConnection ||
  navigator.webkitConnection;
let type = connection.effectiveType;
```

Listener for a change to the user's connection.

```javascript
connection.addEventListener(
  "typechange",
  updateConnectionStatus
);
```

Function to output for any change to the user's connection if called by the listener.

```javascript
function updateConnectionStatus() {
  console.log(
    "Connection type is changed \
  from " +
      type +
      " to " +
      connection.effectiveType
  );
}
```


---

## Practice

Declare the connection and type:

```javascript
let connection =
  ???.connection ||
  navigator.??? ||
  navigator.webkitConnection;
let type = connection.???;
```

- `navigator`
- `mozConnection`
- `effectiveType`
- `connection`
- `kind`
- `statusConnection`
- `eventConnection`


---

## Revision

Listen for a change in the user's connection:

```javascript
// assume connection was
// previously initialised
connection.addEventListener(
  "???",
  handlingFunction
);
```

- `typechange`
- `type`
- `change`
- `update`
- `statusChange`
 
