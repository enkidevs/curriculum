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

_Webpack_ defines each module in your code as a _chunk_. The _`CommonsChunk`_ plugin decided which _chunks_ are used most often, and pulls these into a separate file.

This allows you to have a common file consisting of the most important _JavaScript_ and _CSS_ modules for your application.

First require the plugin into the _webpack.config_ file:

```javaScript
var CommonsPlugin = new
       require("webpack/lib/optimize/
                 CommonsChunkPlugin")
```

Then add a new _common_ entry to _plugins_:

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

The _`common`_ entry means _jquery_ code will be pulled. The _`minChunks`_ option specifies the number of times a module must be used before it is pulled.
