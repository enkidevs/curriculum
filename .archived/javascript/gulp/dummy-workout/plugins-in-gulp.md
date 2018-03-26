---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: tip

parent: writing-gulp-tasks

links:

  - '[gulpjs.com](http://gulpjs.com/plugins/){website}'

---
# Plugins in Gulp

---
## Content

There are over 600 plugins which can be used with *gulp*. They're all listed in the plugins page.

Most plugins come with good documentation and are ran by piping a stream of file objects to it. They then normally modify the files piped to it, and return the new files to be passed on to the next plugin.

```javaScript
// declaring multiple plugins
var gulp = require('gulp'),
    gulp-plugin = require('a-gulp-plugin');

gulp.task('multiple-plugins', function () {
   return gulp.src('js/*.js')
       // calling gulp-plugin declared above
      .pipe(gulp-plugin())
      .pipe(gulp.dest('destination'));
```

---
## Practice

Require the 'gulp' plugin into the gulp file:

```javascript
??? gulp = ???('gulp');
```

* var
* require
* variable
* declare
* use
* str
* int
* load

---
## Revision

How do you declare the 'gulp' plugin into your gulp file? ???
* var gulp = require('gulp');
* var gulp = use('gulp');
* gulp = require('gulp');
* var gulp = require('gulp')
