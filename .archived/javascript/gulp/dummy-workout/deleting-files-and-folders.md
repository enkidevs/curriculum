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
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/delete-files-folder.md){website}

---
# Deleting Files and Folders

---
## Content

The `del` module supports *multiple files* and *globbing* so is ideally suited to deleting files/folders before running your build.

To install:
```bash
npm install --save-dev gulp del
```

Imagine this file  structure:
```bash
├── enki
│   ├── dev
│   ├── test
│       ├── enkiApp.js
│       ├── toRun.json
│       └── styles.css
```
To clean the test folder:
```javaScript
var gulp = require('gulp');
var del = require('del');

gulp.task('clean:test', function () {
  const folder = 'enki/test/';
  return del([
    // match everything in folder
    folder + '**/*',
    // except the enkiApp.js file
    '!' + folder + 'enkiApp.js'
  ]);
});
```
To run the cleaning task:
```javaScript
gulp.task('default', ['clean:test']);
```

---
## Practice

Create a task to clean the src folder of everything but the `enkiApp.js` file:

```javascript
gulp.task('clean:test', ??? {
   const folder = 'enki/???/';
   return del([
      ??? + '**/*',
      '!' + folder + 'enkiApp.js'
   ]);
});
```

* function ()
* src
* folder
* run ()
* start ()
* bin
* delete
* clean
* dir
* directory

---
## Revision

Fill in the gaps to run the folder cleaning task called *clean:dev*.
gulp.task('???', ['???']);

* default
* clean:dev
* run
* clean
* dev
* folder:dev
* clean:folder
* task:clean-dev
 
 
