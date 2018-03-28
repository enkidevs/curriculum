---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

parent: streams

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/sharing-streams-with-stream-factories.md){website}

---
# Sharing Streams with Stream Factories

---
## Content

When using the same plugins **repeatedly** in different tasks it's possible to create and call a *factory* consisting of these plugins, this helps clean up code. 

First require *gulp*, *gulp-uglify* and *gulp-sass*. Then define tasks like below:
```javaScript
gulp.task('enki', function() {
  return gulp.src('enki/scss/*.scss')
    .pipe(gulp-sass())
    .pipe(uglify())
    .pipe(gulp.dest('public/enki'));
});
gulp.task('dev', function() {
  return gulp.src('dev/scss/*.scss')
    .pipe(gulp-sass())
    .pipe(uglify())
    .pipe(gulp.dest('public/js'));
});
```
The `lazypipe` plugin is used to create a factory:
```javaScript
var sassCompile = lazypipe()
  .pipe(gulp-sass)
  .pipe(uglify);
```
Which can be called like this:
```javaScript
gulp.task('enki', function() {
  return gulp.src('bootstrap/js/*.js')
    .pipe(sassCompile())
    .pipe(gulp.dest('public/enki'));
});
gulp.task('dev', function() {
  return gulp.src('lib/js/*.coffee')
    .pipe(sassCompile())
    .pipe(gulp.dest('public/js'));
});
```

---
## Practice

How do you create a factory consisting of the `gulp-concat-css` and the `gulp-clean-css` plugins?

```javascript
var factory = ???
   ???(gulp-concat-css)
   ???;
```
* lazypipe()
* .pipe
* .pipe(gulp-clean-css)
* .stream
* factory()
* create()
* .create
* .create(gulp-clean-css)

---
## Revision

Which Gulp plugin is used to create a factory?
???
* lazypipe()
* uglify()
* factory()
* factpipe()