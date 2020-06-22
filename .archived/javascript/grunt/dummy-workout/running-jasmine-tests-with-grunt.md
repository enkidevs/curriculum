---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - '[github.com](https://github.com/gruntjs/grunt-contrib-jasmine){website}'

---
# Running Jasmine tests with Grunt

---
## Content

The *grunt* plugin `contrib-jasmine` allows *jasmine specs* to be ran with *grunt* in a PhantomJS environment. 

The JavaScript source file, *`main.js`*:
```javaScript
function cubeplus2(x) {
  return (x * x * x) + 2;
}
```
The JavaScript test file, *`test.js`*:
```javaScript
describe('testing cubeplus2', function (){
  it('pass 2 return 6', function() {
    expect(cubeplus2(2)).toBe(6);
  });
  it('pass 5 return 123', function() {
    expect(cubeplus2(5)).toBe(123);
  });
});
```
Installing the `contrib-jasmine` plugin:
```bash
npm install --save contrib-jasmine
```
Loading the plugins and creating the *jasmine* task to run the spec:  
```javaScript
module.exports = function (grunt) {
  grunt.initConfig({
    jasmine: {
      src: 'main.js',
      options: {
        specs: 'tests.js'
      }
    }
});
  grunt.loadNpmTasks('contrib-jasmine');
  grunt.registerTask('default', 'jasmine');
};
```
Running this would produce 0 failures.

---
## Revision

Complete the following JS code snippet to load the `contrib-jasmine` plugin:

```javascript
grunt.???('contrib-jasmine');
```

* loadNpmTasks
* loadNpmPlugins
* loadPlugin
* runPlugin
 
 
