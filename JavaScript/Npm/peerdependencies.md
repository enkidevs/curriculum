# `peerDependencies`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/files/package.json#peerdependencies){website}

---
## Content

In some scenarios, a library may be needed to express the *compatibility* of your package, without necessarily needing a `require` of the plugin. 

Just as well, your module may expose a specific interface, expected and specified by the library.

The `package.json` file has the `peerDependencies` object that fits these exact needs:
```javascript
{  "name": "my-module",
   "version": "1.0.0",
   "peerDepedencies": {
      "needed-plugin": "3.x"
   }
}
        
```

This practice will ensure that your package can be installed along with the host package. `npm install my-module` can yield the dependency graph:
```
|-- my-module@1.0.0
└-- needed-plugin@3.3.0
```

In version 1 and 2 of `npm` , `peerDependencies` are installed automatically. In the latest version (3), a warning message is displayed if the peer dependencies are not installed.

---
## Revision

Complete `package.json` for your app to support `enki@1.0.0` as a peer dependency:
```json
{ "???": {
     "enki": "1.0.0"
   }
}
```

*`peerDependencies`
*`devDependencies`
*`peer`
*`dependency`
*`peerDependency`
*`dependencies`