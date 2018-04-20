---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Webpack with Bower

---
## Content

Bower is a *package manager* for JavaScript libraries, allowing you to define, version, and retrieve your dependencies.

To utilise Bower alongside Webpack two things must be added to Webpack:
- Allow Webpack to look in the *`bower_components`* folder
- Allow Webpack to use the *`main`* field from the *`bower.json`* file.

```javascript
var path = require("path");
var webpack = require("webpack");
module.exports = {
  resolve: {
    modulesDirectories: ["web_modules", 
         "node_modules", "bower_components"]
  },
  plugins: [
    new webpack.ResolverPlugin(
         new webpack.ResolverPlugin.
         DirectoryDescriptionFilePlugin
         (".bower.json", ["main"])
        )
    ]
}
```