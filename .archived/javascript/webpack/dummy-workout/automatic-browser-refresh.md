---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Automatic Browser Refresh

---
## Content

`webpack-dev-server` watches file for changes and rebuilds the project upon change, it also notifies browsers listening to refresh.

Add a script to *`index.html`* to trigger a browser refresh upon a file change:
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"/>
  </head>
  <body>
    <script src="http://localhost:8080/
            webpack-dev-server.js"></script>
    <script src="bundle.js"></script>
  </body>
</html>
```
And add an entry point to the *`webpack.config.js`* file:
```javaScript
var path = require('path');

module.exports = {
    entry: [
      'webpack/hot/dev-server',
      'webpack-dev-server/client? \
                http://localhost:8080',
      path.resolve(__dirname, 'app/main.js')
    ],
    output: {
        path: path.resolve(__dirname,
                               'build'),
        filename: 'bundle.js',
    },
    modulesDirectories: [
      'node_modules'
    ]
};
```
The browser will now automatically refresh when a file change is detected in your application.