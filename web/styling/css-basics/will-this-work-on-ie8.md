---
author: jordanfish
type: tetris
category: feature
---

# Will this work on IE8?


---

## Content

Will the falling bits of `HTML`, `JavaScript` and `CSS` work on world-famous, popular web browser Internet Explorer 8?

Let's find out.


---

## Game Content

no way...:it works!

```true
position:fixed;
%exp
`position` property specifies the type of positioning method used. IE supports this property since version 8.
%
display: inline-block;
%exp
This property generates inline elements that can have width and height. It was introduced in IE8.
%
display:table;
%exp
`table` property defines a block-level box, which behaves like a `<table>` HTML element. It's supported since IE8.
%
outline-color: invert;
%exp
`invert` ensures outline colour is visible. This property is supported by IE since version 8.
%
counter-reset: counter-name;
%exp
`counter-reset`property sets the specified counter to 0. The first version of IE to support this property is IE8.
%
word-break: break-all;
%exp
`break-all` allows word breaks (a point at which a word is split between two lines of text by means of a hyphen) to be inserted between any character for non-CJK (Chinese/Japanese/Korean) text. IE8 supports this property.
%
box-sizing: border-box;
%exp
`border-box` element's specified width and height aren't affected by padding or borders. This property is compatible with IE8.
%
```

```false
touch-action: auto;
%exp
`touch-action` specifies whether a given region can be manipulated by the user via a touchscreen. `auto` enables browser handling of all panning(scrolling) and zooming gestures. The first version of IE to support this property is IE10.
%
::placeholder
%exp
The `::placeholder` is a pseudo element, which provides a hint to the user about what can be entered in the given text area. This property is compatible with IE since IE11.
%
:-ms-input-placeholder
%exp
By default, `placeholder` text in input fields is light grey, but the `ms-input-placeholder`is pseudo-class selector that enables you to style it however you want. It is compatible since IE11.
%
user-select: none;
%exp
The text of the element and sub-elements will not be able to be selected. The none value makes the text of the element and sub-elements unselectable. The first version of IE to be compatible with this property is IE10.
%
font-size-adjust: 0.7;
%exp
This property specifies that the font size should be chosen based on the height of the lower case letters. This property is compatible on IE since IE11.
%
color: initial;
%exp
The initial keyword is used to set a CSS property to its default value. This keyword isn't compatible with any version of IE.
%
text-shadow: 2px 2px 0 #888;
%exp
It lets you create a slightly blurred, slightly translated copy of the text, which ends up looking somewhat like a real-world shadow. IE started to support this property since version 9.
%
background-size: 50%;
%exp
The `background-size`  CSS property specifies the size of the background images. The size of the image can be fully constrained or only partially to preserve its intrinsic ratio. The first version of IE to support this property is version 9.
%
border-image: url(image.png);
%exp
Displays the image at the url with borders. IE11 is the first version to support this property.
%
border-radius: 5px;
%exp
Sets border radius to the given value, enabling corners to be rounded. This property is introduced in IE since version 9.
%
font-size: 2vmin;
%exp
`vmin` is a relative size value that depends on the current viewport size (the viewport is the user's visible area of
the web page). 'font-size' property exists since CSS1, so it is supported by all
browsers, but the value support was introduced in IE10.
%
resize: both;
%exp
The `resize` property controls if and how an element can be resized by the user by clicking and dragging the bottom right corner of the element. This property isn't compatible with any version of IE.
%
```
