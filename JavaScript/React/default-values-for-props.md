# Default values for props
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - ''

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#default-prop-values){website}

---
## Content

**React** provides a way of defining *default* values for props. This allows the safety usage of props even though they are not specified by the parent component. 

The value assignment is done inside `getDefaultProps()` method on the component:

```jsx
var EnkiComponent = React.createClass({
   getDefaultProps: function() {
      return {
        enki: 'default'
      };
    }
  //component
});
```

Here, the default value for the `enki` prop is "default". 

As a consequence, `this.props.enki` will have a value even if it's not specified by the parent component.

---
## Practice

Fill the missing that such that the default values for the `value` prop is `"xyz"`:

```jsx
var Comp = React.createClass({
   ???: function() {
     return {
       ???: ???
     };
   }
 //component
});  
```

*`getDefaultProps`
*`value`
*`"xyz"`
*`defaultProps`
*`xyz`
*`default`

---
## Revision

Fill the missing that such that the default values for the `value` prop is `"xyz"`:

```jsx
var Comp = React.createClass({
   ???: function() {
     return {
       ???: ???
     };
   }
 //component
});  
```

*`getDefaultProps`
*`value`
*`"xyz"`
*`defaultProps`
*`xyz`
*`default`