# Using `gulp-mocha`
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/mocha-test-runner-with-gulp.md){website}

---
## Content

The `gulp-mocha` plugin allows you to run *mocha* tests via *gulp*.


To install *gulp-mocha*:
```bash
$ npm install gulp-mocha
```

In *gulpfile.js* add the following modules:
```javascript
var gulp  = require('gulp');
var mocha = require('gulp-mocha');
var util  = require('gulp-util');
```
We will run the tests when any file changes in the *src* directory. To do this  we will use *gulp watch* which will call a task called *test*.

```javascript
gulp.task('watch-test', function () {
    gulp.watch(['src/**/*.js'], ['test']);
});

```
Create a gulp task, *test* to run and report the Mocha test results:

```javascript
gulp.task('test', function () {
    return gulp.src(['src/**/*.js'], { 
       read: false 
    })
    .pipe(mocha({ reporter: 'spec' }))
    .on('error', util.log);
});

```

Finally create a simple mocha test in the src dir:

```
var assert = require('assert');

describe('boolean tests', function() {
  it('true should equal true', function() {
    assert.equal(true, true);
  });
});
```