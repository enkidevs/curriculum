# Use conventional property names for error handling in Node.js
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: best practice

links:

  - >-
    [www.joyent.com](https://www.joyent.com/developers/node/design/errors){website}

---
## Content

When you handle errors in Node.js, it is best practice to use the standard `Error` class.

You should also use the **conventional property names** to stay consistent with Node core and Node add-ons.

You should include any properties that are useful for the person who will read it. The caller might want to create a custom error message from the details provided.

For example:

* `localHostname` the local DNS hostname
* `localIp` the local IP address
* `localPort`the local TCP port
* `propertyName` an object property name, or an argument name
* `propertyValue` an object property value

---
## Practice

When handling errors in Node, which class is it best practice to use?

???

*`Error`
*`node-error`
*`Node-error`
*`nodeerror`

---
## Revision

Which one would be a conventional property name for error handling?

???

*`localHostname`
*`host`
*`name`
*`localName`
