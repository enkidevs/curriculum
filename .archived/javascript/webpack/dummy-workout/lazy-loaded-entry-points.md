---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Lazy Loaded Entry Points

---
## Content

Having multiple lazy loaded entry points allows part of an application to be loaded when it's *requested*, and not automatically. 

Take an application with a home and admin page. Upon the home page being opened the *JavaScript* and *CSS* for the admin page do not require loading.

Require react:
```javaScript
var React = require('react');
```
Create a `getRoute` function to require either page depending on the hash. If there's no hash, home is loaded.
```
var getRoute = function () {
  if (!location.hash || 
      location.hash.length === 1) {
    require.ensure([], function () {
      var Home = require('./Home.js');
      React.render(Home(), 
        document.getElementById('app'));
    });
  } else if (location.hash === '#admin') {
    require.ensure([], function () {
      var Admin = require('./Admin.js');
      React.render(Admin(), 
        document.getElementById('app'));
    });
  }
};
// Get route when hash changes
addEventListener('hashchange', getRoute);
// Get the current route
getRoute();
```

---
## Practice

Load the admin page of an application using lazy loaded entry points.

```javascript
if (location.hash === '???') {
   require.???([], function () {
      var Admin = require('./Admin.js');
      React.render(???, 
         document.getElementById('app'));
   });
}
```

* #admin
* ensure
* Admin()
* admin
* run()
* hash
* application
* #value

---
## Revision

How do you determine which entry point to be loaded when using Lazy Loaded Entry Points?
???
* a getRoute function and a hash value.
* a getRoute function and a flag value.
* a direction function and a boolean value.
* a direction function and a hash value.
* a getRoute function and a int value.