# `npm`  as an alternative to Gulp
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

links:

  - >-
    [strongloop.com](https://strongloop.com/strongblog/3-neat-tricks-with-npm-run/){website}

---
## Content

Instead of using *Gulp*, the powerful streaming build system for parallel compilation, the `npm run` command can also be used. Consider using the latter in scenarios where *Gulp* is a clear overkill.

Suppose you have some **ES2015** code in `mycode.js`  that needs transpiling with `babel` then piping into `browserify`.

```javascript
//mycode.js
'use strict';
const enki= require('enki');
enki(function*() {
  console.log('Enki was here!');
});
``` 

`gulp-babel` and `gulp-browserify` modules would be needed for *Gulp* to compile this. Instead, babel and browserify command line interfaces can be used.
```bash
./node_modules/.bin/browserify mycode.js |
   ./node_modules/.bin/babel > 
      ./bin/mycode.js
```

To get rid of the `./node_modules/.bin` parts, you can define a script in `package.json`:
```json 
{
  "scripts": {
    "compile": "browserify mycode.js |
         babel > ./bin/mycode.js"
  }
}
```

Furthermore, the script above can be easily run with the `npm run compile` command.