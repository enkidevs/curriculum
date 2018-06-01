---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: best practice

parent: writing-gulp-tasks

links:

  - >-
    [slicejack.com](http://slicejack.com/introduction-to-gulp-a-streaming-javascript-task-runner/){website}

---
# Streams

---
## Content

*Streams* in *gulp* allow you to pass data through a number of small functions, these functions modify the data and pass it on to the next function in the stream.

A stream would be implemented like follows:
```javaScript
gulp.task('js', function () {
   return gulp.src('js/*.js')
      .pipe(jshint())
      .pipe(uglify())
      .pipe(concat('app.js'))
      .pipe(gulp.dest('build'));
});
```
Data would be passed through each function in order with each function modifying the data in its own way.

Note: To run this, you would need to have installed the plugins gulp, gulp-jshint, gulp-uglify and gulp-concat.

---
## Practice

Implement the following stream: 

```javascript
gulp.???('js', function () {
   return gulp.???('js/*.js')
      ???(jshint())
      .pipe(gulp.dest('build'));
});
```

* task
* src
* .pipe
* .pass
* .stream
* run
* dev
* build

---
## Revision

Which two lines of code are required to pass a stream of data through the *gulpLess* function then the *gulpMinifyCSS* function respectively. ??? ???
* .pipe(gulpLess())
* .pipe(gulpMinifyCSS())
* .stream(gulpLess())
* .stream(gulpMinifyCSS())
* .pass(gulpLess())
* .pass(gulpMinifyCSS())
* .gulp(gulpLess())
* .gulp(gulpMinifyCSS())