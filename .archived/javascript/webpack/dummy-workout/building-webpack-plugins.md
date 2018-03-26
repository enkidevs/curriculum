---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Bulding webpack plugins

---
## Content

Webpack plugins allow developers to fulfil Webpack's full potential. Using *staged build callbacks*, developers can introduce their own behaviors into the building process.

Plugins are *instanceable objects* with an *`apply`* method on their prototype. This method is called once by the Webpack compiler when the plugin is installed.

A custom plugin looks like:
```javascript
function EnkiPlugin(options) {
  // Setup plugin instance
  // With reference to options param
}

EnkiPlugin.prototype.apply = 
          function(compiler) {
  compiler.plugin('done', function() {
    console.log("Enki's Webpack Workout!"); 
  });
};

module.exports = EnkiPlugin;
```

To install the plugin, include an instance in your Webpack *`config plugins`* array.
```javascript
var EnkiPlugin = require('enki-webpack');

var webpackConfig = {
  plugins: [
    new EnkiPlugin({options: true})
  ]
};
```

---
## Practice

What method is placed on the plugins prototype? 
```javascript
PracticePlugin.prototype.??? = 
               function(compiler) {
```
* apply
* static
* instance
* run
* change

---
## Revision

What type of objects are webpack plugins?

???

* instanceable
* static