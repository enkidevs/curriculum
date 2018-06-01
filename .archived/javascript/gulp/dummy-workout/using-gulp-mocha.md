---
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

# Using `gulp-mocha`

---

## Content

The `gulp-mocha` plugin allows you to run _mocha_ tests via _gulp_.

To install _gulp-mocha_:

```bash
$ npm install gulp-mocha
```

In _gulpfile.js_ add the following modules:

```javaScript
var gulp  = require('gulp');
var mocha = require('gulp-mocha');
var util  = require('gulp-util');
```

We will run the tests when any file changes in the _src_ directory. To do this we will use _gulp watch_ which will call a task called _test_.

```javaScript
gulp.task('watch-test', function () {
    gulp.watch(['src/**/*.js'], ['test']);
});
```

Create a gulp task, _test_ to run and report the Mocha test results:

```javaScript
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
