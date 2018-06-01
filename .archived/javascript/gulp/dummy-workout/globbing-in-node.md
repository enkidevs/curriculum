---
author: tommarshall

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

links:

  - '[github.com](https://github.com/isaacs/node-glob){website}'

---
# Globbing in Node

---
## Content

A *glob* is a matching pattern for files and can be used in gulp to easily specify or exclude files from `gulp.src()`. 

Examples of *globbing* patterns:
- `*.scss` - matches any file ending with *.scss* in the working directory.
- `**/*.scss` - matches any file ending with *.scss* in the root directory or in any of the child directories.
- `!excluded.scss` - excludes any file named excluded.scss. Used to match all but one file.
- `*.+(scss|sass)` - matches any file ending with *.sass* or *.scss*. The *+* allows more than one extension type to be matched.

Glob patterns can be used in Gulp as follows:

```javaScript
gulp.task('glob', function() {
  return gulp.src('./app/scss/**/*.scss') 
    .pipe(gulp.dest('./app/css/'));
});
```

---
## Practice

Which option compresses files excluding common images?

```
gulp.task('compress', function() {
  return gulp
    .src('???') 
    .pipe(gZip);
});
```
* !**/*.+(png|jpg|gif)
* **/*.+(png|jpg|gif)
* *.+(css|sass|txt|js)
* **/*.+(css|sass|txt|js)