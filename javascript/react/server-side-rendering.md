# Server-side rendering
author: catalin

levels:

  - advanced

  - medium

type: normal

category: pattern

notes: >-
  This insight can fit under Node, Express and React as well as it deals with
  them bundled up.

parent: custom-proptype-s-to-be-required

links:

  - >-
    [artsy.github.io](http://artsy.github.io/blog/2013/11/30/rendering-on-the-server-and-client-in-node-dot-js/){website}

---
## Content

JS **isomorphic** (or universal) app proved useful especially on user performance.

The server renders the React app to a string and generate the first view of the webapp. The user doesn't have to wait for the JS to be fetched before seeing something.
```javascript
var React = require('react');
ReactApp = React.createFactory(require
              ('../components/ReactApp'));
module.exports = function(app) {
  app.get('/', function(req, res){
  var reactHtml =
    React.renderToString(ReactApp({}));
  res.render('index.ejs',
     {reactOutput: reactHtml});
  });
};
```
Inside `index.ejs`:
```html
<div id="react-main-mount">
  <%- reactOutput %> </div>
<!-- bootstrap the app -->
<script src="/main.js"></script>
```

On the **client** side (`main.js`):
```javascript
var React = require('react');
var ReactApp = require
    ('./components/ReactApp');
var mountNode = document.getElementById(
    "react-main-mount");
React.render(new ReactApp({}), mountNode);
```

---
## Revision

The main advantage of server-side rendering in React is that the user doesn't have to wait for JS to be ??? before seeing ???.

* fetched
* the first view of the webapp
* written
* scripted
* results
* improved user performance
