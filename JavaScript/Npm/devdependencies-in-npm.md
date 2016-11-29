# devDependencies in `npm`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/files/package.json#devdependencies){website}

---
## Content

Frameworks that are used solely for documentation or testing should not be included in the `dependencies` object of `package.json`, as they are not needed by all users, but by developers.

Instead, the `devDependencies` object can be used to map these additional items.

The dependencies will be installed when running `npm link` or `npm install` from the root directory of the package.

In addition, the `prepublish` script can be used for build steps that are not platform-specific:
```json
//package.json
{ //other props
  "devDependencies": {
      "coffee-script": "~1.6.3"
  },
  "scripts": {
      "prepublish": "coffee-script script"
  }
  //other props
}
```
The script will be either run before publishing or in **dev mode** (running `npm install`), making testing easy.

---
## Practice

Which script can be used for build steps which aren’t platform-specific? 

???

*`prepublish` 
*`devDependencies` 
*`dependencies` 
*`nonPlatform` 
*`nonSpecific`

---
## Revision

Complete the code snippet from `package.json` as to have a dev dependency called `enki` - version `1.0.0`:
```javascript
{ //other props
  "???": {
    "???": "1.0.0"
  },
}
```

*`devDependencies`
*`enki`
*`dev`
*`optionalDependencies`
*`dependency`
*`peerDependencies`