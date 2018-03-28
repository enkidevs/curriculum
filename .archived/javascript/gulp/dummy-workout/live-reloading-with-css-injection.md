---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

parent: running-tasks-in-series

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/server-with-livereload-and-css-injection.md){website}

---
# Live-Reloading with CSS Injection

---
## Content

*browser-sync* supports streams meaning you can reload at specific points during tasks and all browsers will be notified of the change. 

Require *gulp*, *browser-sync* and *gulp-sass* for your gulpfile:
```javaScript
var gulp = require('gulp');
var browserSync = require('browser-sync')
                    .create();
var sass = require('gulp-sass');
```
Task *serve* runs once task *sass* has completed. It watches Sass and HTML files and calls `browserSync.reload` on change:
```javaScript
gulp.task('serve', ['sass'], function() {
   browserSync.init({
       server: "./enki"
   });
   gulp.watch("enki/scss/*.scss", ['sass']);
   gulp.watch("enki/*.html").on('change', 
                     browserSync.reload);
});
```
Compiling Sass into CSS code and auto-injecting this into browsers:
```javaScript
gulp.task('sass', function() {
    return gulp.src("enki/scss/*.scss")
        .pipe(sass())
        .pipe(gulp.dest("enki/css"))
        .pipe(browserSync.stream());
});
gulp.task('default', ['serve']);
```

---
## Practice

Complete the gulp watch task for browser sync reloading:

```javascript
gulp.watch("enki/src/*.js").???('???', 
             browserSync.???);
```

* on
* change
* reload
* detect
* when
* modify
* refresh
* auto-reload

---
## Revision

How do you require *browserSync* into your gulpfile?
???
* var browserSync = require('browser-sync').create();
* var browserSync = require('browser-sync');
* var browserSync = gulp(require('browser-sync');
* var browserSync = require.browser-sync;