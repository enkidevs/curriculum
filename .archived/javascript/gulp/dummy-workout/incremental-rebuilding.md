---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

parent: writing-gulp-tasks

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/incremental-builds-with-concatenate.md){website}

---
# Incremental Rebuilding

---
## Content

Building tools such as *gulp* provide file watching capabilities for help rebuilding applications if changes are detected. 

Incremental builds look to limit:
- file reading/writing
- file contents processing

An example of an incremental rebuild:
```javaScript
var gulp   = require('gulp');
var jshint = require('gulp-jshint');

gulp.task('jshint', function () {
    return gulp.src('src/**/*.js', 
           {since: gulp.lastRun('jshint')})
        .pipe(jshint());
});
gulp.task('watch', function () {
    return gulp.watch('src/**/*.js', 
           gulp.series('jshint'));
});
gulp.task('build', gulp.series('jshint', 
                               'watch'));
```
The task *lints* (checks for errors) all files using *jshint*. Gulp watches for changes and invokes *jshint* if a change on a javascript source is detected. The *jshint* only lints files with modifications since its last run, hence cutting down on file processing (if there was a large number of files).

---
## Practice

Incremental rebuilding allows you to ??? an application as soon as a ??? is ???.

* rebuild
* change
* detected
* close
* bug
* resolved
* increment
* task
* completed

---
## Revision

Incremental rebuilding allows you to run a ??? whenever a ??? is made. 
* build script
* change
* build operations
* JS file
* task
* program
* jshint
* variable