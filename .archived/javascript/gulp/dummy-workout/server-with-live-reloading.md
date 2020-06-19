---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - '[www.browsersync.io](https://www.browsersync.io/docs/gulp/){website}'

---
# Server with Live-Reloading

---
## Content

It can be frustrating when developing an application to have to continually refresh the page to see the latest changes you have made.

The `browser-sync` module can automatically refresh the page for you and be integrated into a complex build processes such as the compilation and minification of CSS files.

To install:
```bash
npm install browser-sync
```
In gulpfile.js include the following modules:
```javaScript
var gulp = require('gulp');
var browserSync = require('browser-sync');
```

Next create a *serve* task. This task will  watch *index.html* for changes and then tell *browser-sync* to refresh the page.

Note that *html* pages must contain valid *html* as *browser-sync* injects a script tag.

```
gulp.task('serve', function() {
    browserSync.init({
        server: {
            baseDir: "src/"
        }
    });
	
  gulp.watch("src/index.html")
  .on('change', browserSync.reload);
});
```

---
## Revision

Which module is used to allow live-reloading on your server? ???

* browser-sync
* live-reload
* browserSync
* liveReload
 
 
