---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

---
# Requiring loaders

---
## Content

Loaders allow files to be *preprocessed* as and when they're required/loaded. They provide a powerful way to handle front-end build steps.

Loaders are often used to transform files from a different language, or to require files.

Specifying loaders in each module can be repetitive, so it's best to specify loaders in your Webpack configuration file like follows.

```javaScript
{
  module: {
    loaders: [
      // for .jade files
      { test: /\.jade$/, loader: "jade" },
      // for .css files
      { test: /\.css$/, 
              loader: "style!css" },
    ]
  }
}
```

---
## Practice

Where's the best place to specify loaders? ???

* In your Webpack configuration file.
* In each module.
* In a text file linked to the project.

---
## Revision

Which of these loaders is specified properly? ???
* { test: /\\.coffee$/, loader: "coffee-loader" }
* { loader: "coffee-loader", test: /\.coffee$/ }
* { test: coffee, loader: coffee-loader }
* { test: /.coffee$/, loader: "coffee-loader" }