---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Webpack with Karma

---
## Content

*Karma* is a JavaScript test runner predominantly used when testing code in real browsers.

To use Webpack with Karma you need to install the `karma-webpack` node module.

Once installed you then use Webpack as a `preprocessor` for the files that Karma is monitoring.

```javascript
module.exports = function(config) {
  config.set({
    // standard Karma config
    files: [
      // all files ending in "_test"
      'enkiTest/*_test.js',
      'test/**/*_test.js'
    ],
    preprocessors: {
      // add webpack as preprocessor
      'enkiTest/*_test.js': ['webpack'],
      'test/**/*_test.js': ['webpack']
    }
  });
};
```

It's likely that you'll need to provide some kind of Webpack config, this is done by setting the `webpack` property of the Karma config. It can either be an existing Webpack config (such as your application uses) or a special one for your tests:
```javascript
const webpackCfg =
    require('./webpack.config');
module.exports = function(config) {
  config.set({
    // standard Karma config
    files: [
      // all files ending in "_test"
      'enkiTest/*_test.js',
      'test/**/*_test.js'
    ],
    preprocessors: {
      // add webpack as preprocessor
      'enkiTest/*_test.js': ['webpack'],
      'test/**/*_test.js': ['webpack']
    },
    webpack: webpackCfg,
  });
};
```