---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: best practice

links:

  - '[www.npmjs.com](https://www.npmjs.com/package/grunt-browserify){website}'

---
# Browserify + Grunt

---
## Content

*Grunt* can be used to watch files and to call *Browserify* when any changes are detected.

With the following gruntfile, *browserify* will automatically run when `enki/*.js` is modified.

```javaScript
module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.
               readJSON('package.json'),
    watch: {
      js: {
        files: ['enki/*.js'],
        tasks: ['browserify']
      }
    },
    browserify: {
      js: {
        src: './www/app.js',
        dest: './www/bundle.js'
      }
    }
  })
```
Load and run the tasks:
```javaScript
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-browserify')
  grunt.registerTask('default', 
                ['watch', 'browserify'])
}
```

---
## Revision

Supposing the `grunt-browserify` is installed, what must be added to the `grunt.js` file to load the plugin?
```js
grunt.???('???')

```
*`loadNpmTasks`
*`grunt-browserify`
*`loadNpmTask`
*`load`
*`browserify-grunt`