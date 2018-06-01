---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [medium.com](https://medium.com/@okonetchnikov/long-term-caching-of-static-assets-with-webpack-1ecb139adb95#.1s7u89qma){website}

---
# Caching your files

---
## Content

To properly cache files, they should have a hash or version in their URL. 

Webpack can already add *hashes* for the files to the filename, but it has to be enabled for usage with *chunks*. There are two ways:
- Compute hash of all chunks before adding it.
- Compute a hash per chunk before adding it.

One single hash per bundle is done by adding `hash` to the *`filename config`* options.
```javaScript
{
  output: {
    path: path.join(__dirname, 
                    "assets", "[hash]"),
    publicPath: "assets/[hash]/",
    filename: "output.[hash].bundle.js",
    chunkFilename: "[id].[hash].bundle.js"
    }
}
```
A hash per chunk is done by adding `[chunkhash]` to the chunk *`filename config`* option.
```javascript
{
  output: { 
    chunkFilename: "[chunkhash].bundle.js"
  }
}
```

---
## Practice

Compute a hash per chunk by modifying the below code: 

```javascript
{
   output: {
      chunkFilename: "???.bundle.js"
   }
}
```

* [chunkhash]
* chunkhash
* chunk-hash
* hash-chunk
* hash
* chunk

---
## Revision

For files to be cached properly, what should be present in their URL? ???
* a hash or version.
* a hash or description.
* a version or description.
* a hash or path.
* a description or path.