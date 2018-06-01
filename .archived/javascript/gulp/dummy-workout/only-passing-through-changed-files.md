---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/23890806/how-to-run-a-task-only-on-modified-file-with-gulp-watch){website}

---

# Only Passing Through Changed Files

---

## Content

By default, every time gulp is run, _all files_ pass through the pipe chain. Using the `gulp-changed` plugin means only _modified files_ will pass.

This can improve performance significantly on consecutive runs.

To install:

```bash
npm install --save-dev gulp gulp-changed
```

Requiring the _gulp_ and _gulp-changed_ plugins:

```javaScript
var gulp = require('gulp');
var changed = require('gulp-changed');
```

Defining a _modified-files_ task to watch for edited files, and to only pass changed files through the pipe chain.

````javaScript
gulp.task('modified-files', function() {
    return gulp.src('dev/*.js')
        .pipe(changed(dist))
        // only changed files
        // pass through here
        .pipe(gulp.dest(dist));
});```

---
## Revision

Declare the two gulp plugins required to pass only modified files through a pipe chain:

```javascript
var gulp = require('???');
var modified = require('???');
````

- gulp
- gulp-changed
- gulpfile
- gulp-altered
- gulp-modify
- gulp-plugin
