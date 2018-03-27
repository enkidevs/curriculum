---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Using Chunks

---
## Content

*Webpack* defines each module in your code as a *chunk*. The *`CommonsChunk`* plugin decided which *chunks* are used most often, and pulls these into a separate file. 

This allows you to have a common file consisting of the most important *JavaScript* and *CSS* modules for your application.

First require the plugin into the *webpack.config* file:
```javaScript
var CommonsPlugin = new         
       require("webpack/lib/optimize/
                 CommonsChunkPlugin")
```
Then add a new *common* entry to *plugins*:
```javaScript
module.exports = {  
  entry: {
    common: ["jquery"]
  },
  plugins: [
    new CommonsPlugin({
      minChunks: 3,
      name: "common"
    });
  ]
};
```
The *`common`* entry means *jquery* code will be pulled. The *`minChunks`* option specifies the number of times a module must be used before it is pulled.