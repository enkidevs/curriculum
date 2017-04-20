# Will this work on IE8?
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: tetris

category: feature

---
## Content

Will the falling bits of `HTML`, `Javascript` and `CSS` work on world-famous, popular web browser Internet Explorer 8?

Let's find out.

---
## Game Content

no way...:it works!
```true
position:fixed;
%exp
'position' property specifies the type of positioning method used. Here it is set to a fixed. IE8 supports this type of property.
%
display: inline-block;
%exp
This property generates inline elements that can have width and height. It has first been supported on IE8.
%
display:table;
%exp
'table' property defines a block-level box, which behaves like a <table> HTML element. It is supported sience IE8.
%
outline-color: invert;
%exp
'invert' ensures outline colour is visible. When used it performs a colour inversion of the background colours.
%
counter-reset: counter-name;
%exp
'counter-reset' property sets the specified counter to 0. It is supported sience IE8.
%
word-break: break-all;
%exp
'break-all' allows word breaks to be insterted between any character for non-CJK(Chinese/Japanese/Korean) text.
%
box-sizing: border-box;
%exp
'border-box' element's specified width and height aren't affected by padding or borders.
%
```

```false
touch-action: auto;
%exp
'touch-action' specifies whether a given region can be manipulated by the user via a touchscreen. 'auto' enables browser handling of all panning(scrolling) and zooming gestures.
%
::placeholder
%exp
The `::placeholder` is a pseudo element, which provides a hint to the user about what can be entered in the given text area. It started to be supported with IE11.
%
:-ms-input-placeholder
%exp
By default, `placeholder` text in input fields is light gray, but the `ms-input-placeholder`is pseudo-class selector that enables you to style it however you want. It is supported with IE11.
%
user-select: none;
%exp
The text of the element and sub-elements will not be able to be selected. It is started to be supported with IE11.
%
font-size-adjust: 0.7;
%exp
This property specifies that the font size should be chosen based on the hieght of the lower case letters. It is started to be supported with IE11.
%
color: initial;
%exp
The initial keyword is used to set a CSS property to its default value.
%
text-shadow: 2px 2px 0 #888;
%exp
It lets you create a slightly blurred, slightly moved copy of text, which ends up looking somewhat like a real-world shadow. It has been implemented in IE9.
%
background-size: 50%;
%exp
The `background-size`  CSS property specifies the size of the background images. The size of the image can be fully constrained or only partially in order to preserve its intrinsic ratio.
%
border-image: url(image.png);
%exp
Displays the image from the url having borders.
%
border-radius: 5px;
%exp
Sets border radius to the given value. Enabling corners to be rounded.
%
font-size: 2vmin;
%exp
'vim' is used for sizing things relative to the current viewport size(The viewport is the user's visible area of a web page.). It has been implemented in IE11.
%
resize: both;
%exp
The resize property controls if and how an element can be resized by the user by clicking and dragging the bottom right corner of the element.
%
```
