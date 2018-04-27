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
    [Using Webpack with task
    runners](http://stackoverflow.com/questions/33561272/task-runners-gulp-grunt-etc-and-bundlers-webpack-browserify-why-use-toge){website}

---
# Webpack with Gulp

---
## Content

Webpack can be ran as a stream, allowing it to be integrated into *Gulp*. 

Using Webpack with Gulp allows an application's functionality to be extended, for example the Webpack config file can be customised for different environments, with Gulp ensuring the right tasks are ran at the right time.

Below, we handle multiple entry points using Webpack and Gulp.
```javascript
// Require in Gulp and Webpack
var gulp = require('gulp');
var webpack = require('webpack-stream');

// Define our Gulp task
gulp.task('default', function() {
  return gulp.src('src/entry.js')
    .pipe(webpack({
      entry: {
        // define entry points
        app: 'src/enkiApp.js',
        main: 'src/enkiMain.js'
        test: 'test/enkiTest.js',
      },
      output: {
        filename: '[name].js',
      },
    }))
    .pipe(gulp.dest('dist/'));
});
```